base:
  '*':
    - ntp
    - dns
    - name
    - defgw
    - mgmtNetwork
    - masterConfig
  'E@leaf(1|2)':
    - ifOpenconfig
    - snmp
  'E@spine\d':
    - lldp
