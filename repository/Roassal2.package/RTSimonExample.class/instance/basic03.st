basic
basic03
	"
	self new basic03
	"
	| builder |
	builder := RTSimon new.
	builder shape current 
						innerRadius: [ :r | 200 atRandom ];
						externalRadius: [ :obj | 200 + 40 atRandom ];
						outerAngle: [ :o | 360 atRandom ] innerAngle: [ :o | 50 atRandom ];
						color: [ :o | ((Array with: Color red with: Color blue with: Color white) atRandom alpha: 0.1)].
	builder models: (1 to: 10).
	builder open