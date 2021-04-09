
d1 $ slow 2 $ jux (striate 3)  $ s "ocho_HC(3,8)" 

d2 $ slow 4 $ jux(rev) $ s "cafe(3,8)" # n "c5 a5 f5 e4" # attack "0.001" # decay "0.5" # release "0.24" # delay "0.5" # delayt "0.25" # delayfb "0.5" # room "0.5" # size "0.7" # orbit "1"

attack 0.02

d1 $ slow 1 $ cat [struct "t(3,8)" $ n "c5'min7 g4'min7", struct "t(2,5)" $ n "d5'min7"] # s "cafe" # attack "0.06" # decay "0.7" # release "1" # delay "0.5" # delayt "0.25" # delayfb "0.5" # room "0.5" # size "0.7" # orbit "1" # gain "0.67"

setcps 0.4

d3 $ rarely(ghost) $ s "ocho_bd(3,8)" # attack "1" # decay "15" # release "10"


hush



