sources
exampleActive

| v anim |
v := RTView new.

anim := RTActiveAnimation new.
anim intervalInMilliseconds: 1000.
anim blockToExecute: [ 
	| e |
	e := (RTEllipse new size: 40 atRandom; color: (Color red alpha: 0.2)) element.
	e translateTo: (500 atRandom @ 500 atRandom) - (250 @ 250). 
	v add: e.
].
anim inView: v.
^ v
