bgpConfig:
  netconfig.managed:
    - template_name: salt://templates/bgpOpenconfig.j2
    - replace: False
    - debug: True
