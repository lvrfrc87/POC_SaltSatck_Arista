proxy:
  proxytype: napalm
  driver: eos
  host: localhost
  username: vagrant
  password: vagrant
  optional_args:
    port: 12443

### Generic ###
hostname: spine-0

### Interfaces config - based on openconfig model ###
openconfig_interfaces:
  interfaces:
    interface:
      Ethernet1:
        config:
          mtu: 1500
          description: //--Eth1-LEAF1--//
          enabled: True
        subinterfaces:
          subinterfaces:
            0:
              ipv4:
                addresses:
                  address:
                    10.255.255.1:
                      config:
                        ip: 10.255.255.1
                        prefix_lenght: 31
      Ethernet2:
        config:
          mtu: 1500
          description: //--Eth1-LEAF2--//
          enabled: True
        subinterfaces:
          subinterfaces:
            0:
              ipv4:
                addresses:
                  address:
                    10.255.255.2:
                      config:
                        ip: 10.255.255.2
                        prefix_lenght: 31
      Ethernet3:
        config:
          mtu: 1500
          description: //--Eth1-LEAF3--//
          enabled: True
        subinterfaces:
          subinterfaces:
            0:
              ipv4:
                addresses:
                  address:
                    10.255.255.4:
                      config:
                        ip: 10.255.255.4
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
                    10.0.0.1:
                      config:
                        ip: 10.0.0.1
                        prefix_lenght: 24

### BGP config - based on openconfig model ###
openconfig_bgp:
  bgp:
    global:
      config:
        as: 65505
        router_id: 3.3.3.3
    neighbors:
      10.255.255.0:
        neighbor_address: 10.255.255.0
        config:
          enabled: True
          peer_as: 65505
          auth_password: bgpp4ssw0rd
        graceful_restart:
          config:
            enabled: True
        route_reflector:
          config:
            route_reflector_cluster_id: 3.3.3.3
            route_reflector_client: 10.255.255.0
        afi_safis:
          afi_safi_name:
            11:
              ipv4_unicast:
                prefix_limit:
                  config:
                    max_prefixes: 12000
      10.255.255.3:
        neighbor_address: 10.255.255.3
        config:
          enabled: True
          peer_as: 65505
          auth_password: bgpp4ssw0rd
        graceful_restart:
          config:
            enabled: True
        route_reflector:
          config:
            route_reflector_cluster_id: 3.3.3.3
            route_reflector_client: 10.255.255.3
        afi_safis:
          afi_safi_name:
            11:
              ipv4_unicast:
                prefix_limit:
                  config:
                    max_prefixes: 12000
      10.255.255.5:
        neighbor_address: 10.255.255.5
        config:
          enabled: True
          peer_as: 65505
          auth_password: bgpp4ssw0rd
        graceful_restart:
          config:
            enabled: True
        route_reflector:
          config:
            route_reflector_cluster_id: 3.3.3.3
            route_reflector_client: 10.255.255.5
        afi_safis:
          afi_safi_name:
            11:
              ipv4_unicast:
                prefix_limit:
                  config:
                    max_prefixes: 12000
