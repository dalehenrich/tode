menu
menuWithSVGIcon1
	"
	self new menuWithSVGIcon1
	"
	| canvas svgPath1 svgPath2 |
	canvas := TRCanvas new.
	svgPath1 := 'M256,116.656L308.021,186H203.979L256,116.656z M256,50L123.966,226h264.068L256,50z M308.021,326L256,395.345L203.979,326H308.021z M388.034,286H123.966L256,462L388.034,286z'.
	canvas addMenuAsSVG: svgPath1 scale: 0.1 callback: [ canvas addShape: (TRBoxShape new color: (Color purple alpha: 0.1); from: (400 atRandom @ 400 atRandom) extent: (100 atRandom @ 100 atRandom)). canvas signalUpdate ].

	canvas addMenu: '+ circle' callback: [ canvas addShape: (TREllipseShape new color: (Color blue alpha: 0.1); from: (400 atRandom @ 400 atRandom) extent: (100 atRandom @ 100 atRandom)). canvas signalUpdate ].	
	canvas camera translateTo: 250 @ 250.
	canvas open