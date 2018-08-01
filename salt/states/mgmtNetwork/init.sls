defGw:
  netconfig.managed:
    - template_name: salt://defGw.j2
    - nextHopP: {{ salt.pillar.get('nextHopP') }}
    - nextHopB: {{ salt.pillar.get('nextHopB') }}
    - replace: false

dsn:
  netconfig.managed:
    - template_name: salt://dns.j2
    - replace: false
    - servers: {{ salt.pillar.get('dnsServers') | json }}


name:
  netconfig.managed:
    - template_name: salt://name.j2
    - replace: false

ntp:
  netconfig.managed:
    - template_name: salt://ntp.j2
    - replace: false
    - servers: {{ salt.pillar.get('ntpServers') | json }}

logging:
  netconfig.managed:
    - template_name: salt://logging.j2
    - replace: false
    - logServers: {{ salt.pillar.get('logServers') | json }}
