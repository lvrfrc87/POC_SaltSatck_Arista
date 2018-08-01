mgmtDns:
  netconfig.managed:
    - template_name: salt://templates/dns.j2
    - servers: {{ salt.pillar.get('dnsServers') }}
    - replace: false
