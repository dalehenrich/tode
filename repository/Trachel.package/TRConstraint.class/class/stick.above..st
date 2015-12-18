public - sticking
stick: aShape above: anotherShape
	| b |
	self move: aShape above: anotherShape. 

	b := [ :shape :step | self move: aShape above: anotherShape ].
	anotherShape addCallback: (TRTranslationCallback block: b).
	anotherShape addCallback: (TRExtentCallback block: b)
	