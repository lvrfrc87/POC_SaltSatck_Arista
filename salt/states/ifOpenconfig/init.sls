ifConfig:
  netconfig.managed:
    - template_name: salt://templates/ifOpenconfig.j2
    - replace: False
    - debug: True
