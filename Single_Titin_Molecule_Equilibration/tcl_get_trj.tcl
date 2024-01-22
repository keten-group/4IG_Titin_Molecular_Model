
package require topotools


mol delete all

topo readlammpsdata {equi_t300_1ns.data}

mol addfile {EPDM.lammpstrj} type {lammpstrj} first 0 last -1 step 1 waitfor -1


pbc unwrap -sel all

#set sys [molinfo top]
#set ns [molinfo $sys get numframes]
##set last_keep [expr $ns -2 ]
##animate delete  beg 0 end $last_keep skip 0 top

#for {set i 0} {$i < $ns} {incr i 1} {
#animate goto $i

#topo writelammpsdata ${i}.data

#} 



