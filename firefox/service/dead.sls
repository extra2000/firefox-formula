# -*- coding: utf-8 -*-
# vim: ft=sls

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import FIREFOX with context %}

firefox-dead:
  cmd.run:
    - name: podman container rm --force firefox
    - runas: {{ FIREFOX.hostuser.name }}
