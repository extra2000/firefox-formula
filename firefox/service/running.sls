# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import FIREFOX with context %}

firefox-volume-present:
  cmd.run:
    - name: podman volume create firefox
    - success_retcodes:
      - 0
      - 125

firefox-running:
  cmd.run:
    {% if grains['os'] == 'Fedora' %}
    - name: podman run --rm -d --name=firefox -p {{ FIREFOX.ip }}:{{ FIREFOX.port.webgui.host }}:{{ FIREFOX.port.webgui.container }} -v firefox:/config -p {{ FIREFOX.ip }}:{{ FIREFOX.port.vnc.host }}:{{ FIREFOX.port.vnc.container }} --security-opt seccomp={{ FIREFOX.seccomp }} --memory-reservation {{ FIREFOX.resources.requests.memory }} --memory {{ FIREFOX.resources.limits.memory }} --shm-size {{ FIREFOX.shm_size }} jlesage/firefox
    {% else %}
    - name: podman run --rm -d --name=firefox -p {{ FIREFOX.ip }}:{{ FIREFOX.port.webgui.host }}:{{ FIREFOX.port.webgui.container }} -v firefox:/config -p {{ FIREFOX.ip }}:{{ FIREFOX.port.vnc.host }}:{{ FIREFOX.port.vnc.container }} --security-opt seccomp={{ FIREFOX.seccomp }} --shm-size {{ FIREFOX.shm_size }} jlesage/firefox
    {% endif %}
    - runas: {{ FIREFOX.hostuser.name }}
