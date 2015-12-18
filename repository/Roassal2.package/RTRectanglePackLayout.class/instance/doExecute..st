hook
doExecute: elements
	| sortedElements maxSpace |
	bounds := 0@0.
	
	maxSpace := elements inject: 0@0 into: [ :sum :el |
			sum + el extent ].
		
	padding := maxSpace / elements size * gap / 2.
	
	maxSpace := 1 + gap * maxSpace.
	
	freeSpace := Set new.
	freeSpace add: (0@0 corner: maxSpace).
	
	sortedElements := SortedCollection sortBlock:  [ :larger :smaller |
		larger  encompassingRectangle halfPerimeter >
		smaller encompassingRectangle halfPerimeter ].
	sortedElements addAll: elements.
	
	sortedElements
		do: [ :element | self packIn: element ]
		displayingProgress: 'Laying out elements'