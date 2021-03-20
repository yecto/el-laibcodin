
(
Pdef(\hola,
	Pbind(\instrument, \bd,
		\tone, Pseq([56, 46, 44], inf),
		\decay, Pseq([3, 30, 60], inf),
			\dur, Pseq([1, 1], inf);
	))
);

// decay=30, amp=2, gate=0, tone=56;

Pdef(\hola).play;
Pdef(\hola).stop;

(
Pdef(\tarola,
	Pbind(\instrument, Pxrand([\cpRaw, \bd, \hat], inf),
			\dur, Pxrand([1, 0.375, 0.75], inf);
	))
);

Pdef(\tarola).play;
Pdef(\tarola).stop;

(
Pdef(\contras,
	Pbind(\instrument, \hat,
		\dur, Pxrand([1, 0.5, 0.25], inf);
))
);

Pdef(\contras).play;

