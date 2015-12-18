examples
example02

	"
	self new example02
	"
	| v b |
	v := RTView new.
	
	b := RTMenuBuilder new view: v.
	b menu: 'add' submenu: '10' background: (Color red alpha:0.3) callback: [ 
		| es |
		es := (RTLabel new color: [ :tt| Color random ]) elementsOn: (1 to: 10).
		es do: [ :e | e translateTo: ((500 atRandom @ 500 atRandom) - (250 @ 250)) ].
		v addAll: es. 
		v canvas signalUpdate ].

	b menu: 'add' submenu: '20' background: (Color red alpha:0.3) callback: [ 
		| es |
		es := (RTLabel new color: [ :tt| Color random ]) elementsOn: (1 to: 20).
		es do: [ :e | e translateTo: ((500 atRandom @ 500 atRandom) - (250 @ 250)) ].
		v addAll: es. 
		v canvas signalUpdate ].

	
	b menu: 'remove' submenu: 'odd' background: (Color red alpha:0.3) callback: [ (v elements select: [ :e | e model odd ]) do: #remove. v canvas signalUpdate ].
	b menu: 'remove' submenu: 'even' background: (Color red alpha:0.3) callback: [ (v elements select: [ :e | e model even ]) do: #remove. v canvas signalUpdate ].

	b menu: 'shuffle' callback: [ 
		| tra |
		tra := RTSmoothLayoutTranslator new.
		tra nbCycles: 0.5.
		(v elements do: [ :e | tra translate: e to: ((500 atRandom @ 500 atRandom) - (250 @ 250)) ]) ].		

	^ v 