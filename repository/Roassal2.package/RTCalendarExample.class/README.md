RTCalendarExample new installTitle: 'VisualizationCSV' 
		code:
'
| b tab colors dictionary |
tab := RTTabTable new input: ''http://bl.ocks.org/mbostock/raw/4063318/dji.csv'' asUrl retrieveContents usingDelimiter: $,.
tab removeFirstRow.

dictionary := Dictionary new.
tab values do: [ :ar | | value |
	value := (ar fifth asNumber - ar second asNumber)/ ar second asNumber.
	dictionary at: ar first asDate put: value ].

colors := #(#(165 0 38) #(215 48 38) #(244 109 67)
	#(253 174 97) #(254 224 139) #(255 255 191) #(217 239 139)
	 #(166 217 106) #(102 189 99) #(26 152 80) #(0 104 55)
  ) collect: [ :ar| Color r: ar first g: ar second b: ar third range: 255 ].

b := RTCalendarBuilder new.
b dateShape rectangle size: 15; color: Color white; borderColor: Color lightGray.
b monthShape shape: (b monthShapePath: 15.0).
b yearShape composite: [ :comp | 
	comp add: (RTLabel new text: [ :d | d year ]; height: 20 ).
	comp add: (RTBox new color: Color transparent). ] .
b dates: ((Year year: 1990) to: (Year year: 2010) ).
b dateLayout gapSize: 0.
b monthLayout month.
b yearLayout horizontalLine.
b dateShape if: [ :d | dictionary includesKey: d ] color: 
	[ :d | | value index |
	value := (dictionary at: d)+0.05.
	index := (value * 11/ 0.1)+1.
	index < 1 ifTrue: [ index := 1 ].
	index > 11 ifTrue: [ index := 11 ].
	colors at: index. ].
b dateInteraction popup.
b build.
(b view elements select: [:e | e model isKindOf: Month]) pushFront.
^ b view

'
	