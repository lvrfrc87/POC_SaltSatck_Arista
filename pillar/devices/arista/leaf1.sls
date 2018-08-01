### NAPLAM proxy config ###
proxy:
  proxytype: napalm
  driver: eos
  host: localhost
  username: vagrant
  password: vagrant
  optional_args:
    port: 11443

### Generic ###
hostname: leaf-1

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
                    10.255.255.0:
                      config:
                        ip: 10.255.255.0
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
                    1.1.1.1:
                      config:
                        ip: 1.1.1.1
                        prefix_lenght: 24
