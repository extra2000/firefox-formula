# -*- coding: utf-8 -*-
# vim: ft=yaml

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import FIREFOX with context %}

firefox-image-build:
  cmd.run:
    - name: podman build --security-opt seccomp={{ FIREFOX.seccomp }} --build-arg FIREFOX_VERSION={{ FIREFOX.version }} -t {{ FIREFOX.image }} .
    - cwd: /opt/firefox/src
    - runas: {{ FIREFOX.hostuser.name }}
