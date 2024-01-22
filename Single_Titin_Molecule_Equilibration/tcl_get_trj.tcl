
package require topotools


mol delete all

topo readlammpsdata {equi_t300_1ns.data}

mol addfile {EPDM_eq.lammpstrj} type {lammpstrj} first 0 last -1 step 1 waitfor -1
mol addfile {pull_320.lammpstrj} type {lammpstrj} first 0 last -1 step 1 waitfor -1

pbc unwrap -sel all




