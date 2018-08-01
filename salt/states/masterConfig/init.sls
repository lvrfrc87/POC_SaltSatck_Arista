masterCfg:
  netconfig.managed:
    - template_name: salt://masterTemplate.j2
    - replace: True
    - debug: True
