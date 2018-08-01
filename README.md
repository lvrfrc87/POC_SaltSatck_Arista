### SALT SERVER/PROXY and Arista

files in `salt_config_files` go under `/etc/salt`

`salt` and `pillar` directories go under `/srv`

 ### Topology

 leaf1 -- spine0 -- leaf2
            |
            |
          leaf3

I used this POC to demonstrate how it is possible to provision a new switch
running a single `state.sls` based on a common JINJA template.
Using config-replace, it is possible to update the spine comnfig to enable the
switchport were the new switch is connected and to add a new bgp neighbour.
