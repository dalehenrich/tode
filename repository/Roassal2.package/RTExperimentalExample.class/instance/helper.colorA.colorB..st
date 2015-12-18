as yet unclassified
helper: method colorA: colorA colorB: colorB

| num m layers0 layers1 s width height x y color area button elements |
num := 20."Number of layers"
m := 200."Number of samples per layer"
width := 960.
height := 500.

s := RTExperimentalStack new 
	offset: method; yourself.

layers0 := self dataFor: m@num stack: s.
layers1 := self dataFor: m@num stack: s.

x := RTScale linear domain: { 1. m } ; range: { 0. width }.
y := RTScale linear domain: {0. self maxYValueFor: layers0 and: layers1 }; range: {height. 0}.
color := RTScale linear range: { colorA. colorB }.

area := RTAreaBuilder new 
	x: [ :d | x scale: d x  ];
	y0: [:d | y scale: d y0 ];
	y1: [:d | y scale: d y0 + d y];
	data: layers0.
area shape color: [ :e | color scale: Random new next ].
area interaction highlightColored: Color red.
area build.

button := self createExampleButton.
elements := area view elements.
area view add: button.
TRConstraint move: button below: elements.
button when: TRMouseClick do: [ | temp |
	temp := layers0.
	layers0 := layers1.
	layers1 := temp.
	elements doWithIndex: [ :e :i | e model: (layers0 at: i) ].
	area view addAnimation: (RTXPSVGAnimation new 
		on: elements
		during: 2.5
		path: area). ].

^ area view @ RTDraggableView.
