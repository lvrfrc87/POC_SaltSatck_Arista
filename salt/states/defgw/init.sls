defGw:
  netconfig.managed:
    - template_name: salt://templates/defgw.j2
    - nextHopP: {{ salt.pillar.get('nextHopP') }}
    - nextHopB: {{ salt.pillar.get('nextHopB') }}
    - replace: false
