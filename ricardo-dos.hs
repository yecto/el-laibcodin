
hush

setcps (62.4/130)

d1 $ rarely(rev) $ slow 2 $ rarely (# s "[no:3, no:4, sn]") $ rarely(rev) $ jux(rev)
  $ struct "[t ~ t(3,8) t ~ t*2 t ~ t t*2 ~]"
  $ n "1"
  # sound "[no, hh, no:4]"
  # speed "1.2"
  # n (irand 14)
  # room 0.1 # size 0.4
  # lpf 4000 # hpf 1000

hush

setcps (72/130)

d1 $ jux(rev)
  $ rarely(# n "d e d d") $ rarely(# n "f e f d")
  $ off 0.125 (+30)
  $ iter 4 $ n "[d e f c d e d e]/2"
  # sound "arpy"
  # room "0.27" 
  # size "0.97"
  # crush 7
  # gain "1.1"
  # att "0.5"
  # lpf "1000"
  # n (irand 4)
  # orbit 0

hush

d2 $ slow 2 $ striate 8
  $ rarely(#n "f a") $ rarely(#n "a b")
  $ off 1 (+7)
  $ n "d e"
  # sound "arpy"
  # room "0.9" # size "0.6"
  # gain "0.5"
  # orbit 1

d3 $ slow 3
  $ sometimes(#s "insect:0")
  $ n "a"
  # sound "arpy"
  # att "0.6"
  # gain "1.3"

d1 silence

d2 silence

d3 silence


setcps(88/130)

--

-- patrones de tidal estructura


d1 $ funcion(# speed "0.6") $ sonido "hola" # efecto "0.6"

-- efectos:)

d1 $ slow 2 $ s "no h_h jay-dee-sn h_h" # n "0 0 6 0" # speed "-2 20" # room "0.9" # size "0.97" # dry "0.6" # delay "1.2" # delaytime "0.125 0.5" # delayfb "0.6" # gain "0.7" # orbit 0 

hush

d2 $ slow 1.5 $ s "no h_h jay-dee-sn h_h" # n "0 0 6 0" # delay "1.2" # delaytime "7 0.125 0.5 1" # delayfb "0.7" # orbit 1

hush

-- http://cgm.cs.mcgill.ca/~godfried/publications/banff.pdf
-- euclidean rhythms

d2 $ slow 1.5 $ s "no(3,8)"

d1 $ slow 1.5 $ s "no h_h jay-dee-sn h_h" # n "0 0 6 0"

setcps 1

d3 $ slow 1.5 
   $ sometimes (# s "conga(5,16)") 
   $ s "timbal(4,11)" 
   # n (irand 10)

d4 $ slow 1.5 $ s "conga(5,12)" # n (run 10)

-- combinar struct con euclidean

d1 $ slow 2 $ struct "t(3,8)" $ s "no*2" # n "0 3" 

hush

d1 $ slow 2 $ struct "t(3,8)" $ s "glitch conga no" 

hush

0 ~ ~ 0 ~ ~ 2 ~

3,8

1 1 1 0 0 0 0 0

1 0 1 0 1 0 0 0

1 0 0 1 0 0 1 0

t ~ ~ t ~ ~ t ~

~ ~ t ~ ~ ~ t t ~ ~ t ~ ~ ~ t t

d1 $ rarely (slow 2) $ s "h_h*4"


-- cat - leer para abajo*

d1 $ slow 2 
   $ cat [ 
   s "no h_h jay-dee-sn h_h", 
   jux(rev) $ s "no h_h jay-dee-sn h_h",
   s "no h_h jay-dee-sn h_h" # speed "-2 20" # room "0.9" # size "0.97" # dry "0.6" # delay "1.2" # delaytime "0.125 0.5" # delayfb "0.6" # gain "0.7" # orbit 0 
   ]

-- stack - sandwich o repisa

d1 $ slow 4 
   $ rarely (slow 2)
   $ rarely (ghost) 
   $ stack [
   cat [s "no ~ ~ ~", s "no(3,8)"],
   s "~ ~ jay-dee-sn ~" # n 6,
   s "h_h(5,8)", 
   slow 4 $ s "conga(9,16)" # n (run 10)
   ] 

d2 $ slow 2 $ randcat [ 
   n "g3",
   n "d3",
   n "b3"
   ] 
   # s "supersaw" # attack "0.3" # sustain "2" # release "8" # room "0.9" # size "0.97" # dry "0.6" # orbit 2

hush

d2 $ slow 4 $ rev $ degradeBy 0.5 $ jux(off 0.0625 (+12)) $ struct "~ ~ t ~ ~ ~ t t ~ ~ t ~ ~ ~ t t" $ n "g3 b3 d3 e4" # s "superpiano" # velocity "[1.20 0.9 0.8 1]" # attack "0.03" # sustain "1" # release "2" # room "0.9" # size "0.47" # dry "0.6" # orbit 2 # gain 0.8

hush







