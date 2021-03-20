s.quit();
Server.killAll;
s.boot();
s.scope(2);
s.quit();


{SinOsc.ar(10000, 0.0, 0.5)!2}.play;
{SinOsc.ar(MouseX.kr(20, 20000), 0.0, 0.5)!2}.play;
{SinOsc.ar(XLine.kr(200, 2000, 9), 0.0, 0.5)!2}.play;

// comment

// limpiar post window - cmd+shift+P

/*
 20 - 20,000 Hz

 SmallTalk (C++, C, JavaScript)

 440 es la nota de LA central
 para evaluar el código - 'cmd+enter'
 detener el sonido 'cmd + .'
*/

// crear variables

~freq = (209..2000).choose;

~ricardo = {LFSaw.ar(~freq, 0.0, 0.5)!2};
~ricardo.play;
~ricardo.done;

// SynthDefs

(
SynthDef(\cafe, {
	arg freq;
	var oscilador, envolvente;
	oscilador = (SinOsc.ar(freq, 0, 1));
	envolvente = (EnvGen.kr(Env.perc(0.01, 0.13), doneAction:2));
	Out.ar([0, 1], oscilador * envolvente * 0.14);
}).send(s);
)

a = Synth(\cafe, [freq: 300 ]);

(
Pdef(\adios,
	Pbind(\instrument, \cafe,
		\freq, Pseq([48, 57, 53, 52].midicps, inf),
		\dur, Pxrand([0.5, 0.75], inf);
	))
);

FreeVerb

CAFE

Pdef(\adios).play;
Pdef(\adios).stop;

midicps
















