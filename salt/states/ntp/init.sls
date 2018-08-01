mgmtNtp:
  netconfig.managed:
    - template_name: salt://templates/ntp.j2
    - servers: {{ salt.pillar.get('ntpServers') }}
    - replace: False
