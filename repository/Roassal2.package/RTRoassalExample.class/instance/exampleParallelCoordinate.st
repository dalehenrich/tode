sources
exampleParallelCoordinate
| maxValue spaceBetweenLine lineHeight numberOfColumns numberOfLines values setOfElements v e t line|
 
"Configuration"
maxValue := 40.
spaceBetweenLine := 50.
lineHeight := 150.
numberOfColumns := 10.
numberOfLines := 100.

"Script"
values := OrderedCollection new.
numberOfLines timesRepeat: [ 
	t := OrderedCollection new.
	numberOfColumns timesRepeat: [ t add: maxValue atRandom ].
	values add: t.
	 ].

v := RTView new.
setOfElements := OrderedCollection new.
1 to: numberOfColumns do: [ :i |
	t := OrderedCollection new.
	values do: [ :setOfValues |
		e := (RTEllipse new color: (Color red alpha: 0.3)) element.
		t add: e.
		e translateTo: 
				(i * (spaceBetweenLine - 1)) @ 
					((setOfValues at: i) * lineHeight / maxValue) asFloat.
		v add: e.
	].
	setOfElements add: t.
].

2 to: numberOfColumns do: [ :column |
	t := OrderedCollection new.
	values doWithIndex: [ :setOfValues :index |
		line := (RTLine new color: (Color red alpha: 0.3)) 
			edgeFrom: ((setOfElements at: (column - 1)) at: index) to: ((setOfElements at: column) at: index).
		v add: line.
	].
	
].
^ v