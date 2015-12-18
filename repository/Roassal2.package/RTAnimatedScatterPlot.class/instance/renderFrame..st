public - frames
renderFrame: aFrameNumber
	| elements newX newY r newSize table |
	table := tables at: aFrameNumber.
	elements := self allEntries collect: [ :entryName | view elementFromModel: entryName ].
	elements
		do: [ :e | 
			"We get the row that we are interested in"
			r := table values detect: [ :rrow | rrow first = e model ] ifNone: [ nil ].
			r
				ifNil: [ 
					newSize := 0.
					newX := 0.
					newY := 0 ].
			r
				ifNotNil: [ 
					newX := (x rtValue: r) max: maxX in: (0 to: self chartTotalSize).
					newY := ((y rtValue: r) max: maxY in: (0 to: self chartTotalSize)) negated.
					newSize := (size rtValue: r) max: sizeMax in: (5 to: 30).
					properties do: [ :prop | prop value: r value: e ] ].
			view addAnimation: (RTAccelerationMove new to: newX @ newY during: 0.4 on: e).
			e trachelShape size: newSize ].	"Give indication about the frame"
	labelShape text: (self getTitleNumber: aFrameNumber table: table).
	view signalUpdate