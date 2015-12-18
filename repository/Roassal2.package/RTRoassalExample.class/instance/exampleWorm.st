sources
exampleWorm

| v s e last lineLength callback nbOfElements head |
v := RTView new.
s := RTEllipse new 
				size: [ :m | m * 10 ]; 
				color: (Color blue alpha: 0.4).
nbOfElements := 10.
last := nil.
1 to: nbOfElements do: [ :i | 
	e := (s elementOn: i).
	v add: e.		
	last ifNotNil: [ v add: (RTLine new edgeFrom: e to: last) ].
	last := e.		
].

lineLength := 40.

callback := TRTranslationCallback 
	block: [ :shape :step | 
			| diff alpha dist |
			(shape element outgoingEdges collect: #to) do: [ :el | 
				diff := shape position - el position.
				alpha := diff theta.
				dist := ((diff x * diff x) + (diff y * diff y)) sqrt. 
				el translateBy: (alpha cos * (dist - lineLength)) @ (alpha sin * (dist - lineLength)) ] ].
 
v elements do: [ :el | el trachelShape addCallback: callback ].

head := v elements last.
v when: TRMouseMove do: [ :evt | 
	head translateBy: (evt positionFromCamera - head position) / 10.
	v canvas signalUpdate ].

head translateBy: -150 @ -150.

	^ v