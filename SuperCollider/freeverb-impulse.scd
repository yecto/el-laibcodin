
(
z = SynthDef(\src, { |out, mix = 0.25, room = 0.15, damp = 0.5|
    Out.ar(out,
        FreeVerb.ar(
            Decay.ar(Impulse.ar(1), 0.25, LFCub.ar(800, 0, 0.1)), // mono src
            mix, // mix 0-1
            room, // room 0-1
            damp // damp 0-1 duh
        ) ! 2 // fan out...
    );
}).play
)

z.set(\room, 1)
z.set(\mix, 0.34)
z.set(\damp, 0.32)

z.free

