public
setLooseFlag: aBool
	"Configuration to 'loose' labelings.
	The extreme labels can be placement both inside(setLooseFlag: false) and outside (setLooseFlag: true) of the range of the data.
	
	Example
	.=.=.=.=.=.=.=.=.=.=.=.=.=.=.=.=.=
	lg setLooseFlag: true.
	label := lg searchMin: -98.0 max: 18.0 desired: 3.
	self assert: label asString = '(Score: 0.14) -100.00	-60.00	-20.00	20.00	'.
	lg setLooseFlag: false.
	label := lg searchMin: -98.0 max: 18.0 desired: 3.
	self assert: label asString = '(Score: 0.62) -100.00	-50.00	0.00	'.
	.=.=.=.=.=.=.=.=.=.=.=.=.=.=.=.=.=
	"
	loose := aBool.
	nice reset.