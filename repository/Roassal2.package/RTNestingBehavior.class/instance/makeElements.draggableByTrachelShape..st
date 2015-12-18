utility
makeElements: elements draggableByTrachelShape: trachelShape
	| callback |
	callback := TRTranslationCallback block: [ :shape :step | elements do: [ :e | e translateBy: step ] ].
	trachelShape addCallback: callback 