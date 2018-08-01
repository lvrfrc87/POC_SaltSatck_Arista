proxy:
  proxytype: napalm
  driver: eos
  host: localhost
  username: vagrant
  password: vagrant
  optional_args:
    port: 14443

### Generic ###
hostname: leaf-3

### Interfaces config - based on openconfig model ###
openconfig_interfaces:
  interfaces:
    interface:
      Ethernet1:
        config:
          mtu: 1500
          description: //--Eth1-SPINE-0--//
          enabled: True
        subinterfaces:
          subinterfaces:
            0:
              ipv4:
                addresses:
                  address:
                    10.255.255.5:
                      config:
                        ip: 10.255.255.5
                        prefix_lenght: 31
      Management1:
        config:
          mtu: 1500
          description: //--VBox-NAT--//
          enabled: true
        subinterfaces:
          subinterfaces:
            0:
              ipv4:
                addresses:
                  address:
                    10.0.2.15:
                      config:
                        ip: 10.0.2.15
                        prefix_lenght: 24
      Loopback0:
        config:
          mtu: 1500
          description: //--SafestPlaceOnEarth--//
          enabled: true
        subinterfaces:
          subinterfaces:
            0:
              ipv4:
                addresses:
                  address:
                    3.3.3.3:
                      config:
                        ip: 3.3.3.3
                        prefix_lenght: 24

### BGP config - based on openconfig model ###
openconfig_bgp:
  bgp:
    global:
      config:
        as: 65505
        router_id: 4.4.4.4
    neighbors:
      10.255.255.4:
        neighbor_address: 10.255.255.4
        config:
          enabled: True
          peer_as: 65505
          auth_password: bgpp4ssw0rd
        graceful_restart:
          config:
            enabled: True
        afi_safis:
          afi_safi_name:
            11:
              ipv4_unicast:
                prefix_limit:
                  config:
                    max_prefixes: 12000

### OSPF config - based on openconfig model ###
