actions
displayDecoration: anElement
	| position decorations callback |
	position := anElement encompassingRectangle topRight.
	decorations := anElement attributeAt: #decoration ifAbsentPut: [ RTGroup new ].
	decorations ifNotEmpty: [ ^ self ].
	items reverseDo: [ :item | | decoration halfExtent |
		decoration := item element.
		decoration when: TRMouseClick do: [ :anDecorationEvent | item action rtValue: anElement ].
		item tooltip ifNotNil: [ :text | decoration @ (RTPopup text: text) ].
		halfExtent := (decoration extent // 2) * (1 @ -1).
		decoration translateTo: position - halfExtent.
		position := position - (decoration extent x @ 0).
		decorations add: decoration.
		anElement view add: decoration.
	].
	callback := TRTranslationCallback block: [ :shape :step | decorations translateBy: step ].
	anElement attributeAt: #decorationCallback put: callback.
	anElement trachelShape addCallback: callback.