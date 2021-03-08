# -*- coding: utf-8 -*-
# vim: ft=yaml

{%- set tplroot = tpldir.split('/')[0] %}
{%- from tplroot ~ "/map.jinja" import FIREFOX with context %}

/opt/firefox:
  file.directory:
    - user: {{ FIREFOX.hostuser.name }}
    - group: {{ FIREFOX.hostuser.group }}

/opt/firefox/src:
  file.recurse:
    - source: salt://firefox/files/docker-firefox
    - user: {{ FIREFOX.hostuser.name }}
    - group: {{ FIREFOX.hostuser.group }}
    - show_changes: false

{{ FIREFOX.seccomp }}:
  file.managed:
    - source: https://raw.githubusercontent.com/moby/moby/master/profiles/seccomp/default.json
    - skip_verify: true
    - user: {{ FIREFOX.hostuser.name }}
    - group: {{ FIREFOX.hostuser.group }}
