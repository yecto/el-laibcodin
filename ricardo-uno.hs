
hush

-- sacar bpm

setcps (80/130)

-- tecnica swing 

setcps 0.31896965967921

setcps 0.4

setcps (80/130)

d1 $ rarely (slow 1.5) $ rarely (rev) $ s "no hh jay-dee-sn hh" # n "0 0 6 0"

hush

d1 $ iter 4 $ s "no hh jay-dee-sn hh" # n "0 0 6 0"


d1 $ rarely (# s "no") $ struct "t ~ t [~ t]" $ sound "conga" 

-- estructuras 
-- hola!

hush

d2 $ slow 1 $ s "no"

-- cortar y toca el numero de veces que le des

d3 $ slow 2 $ jux(striate 2) $ s "hh*4"

d4 $ slow 1 $ s "~ ~ sn ~" # n 1

hush

d1 $ slow 2 $ iter 3 $ struct "~ ~ t ~ ~ ~ t t ~ ~ t ~ ~ ~ t t" $ sound "conga*16" # n (irand 10) 

-- striate

d1 $ slow 8 $ striate 132 $ struct "~ ~ t ~ ~ ~ t t ~ ~ t ~ ~ ~ t t" $ sound "timbal*16" # n (irand 10) 



hush





