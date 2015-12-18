accessing
update
|pos1 pos2 maxWidth parentMenu y |
		
	parentMenu := view canvas fixedShapes select: [ :t | t class == TRLabelShape and: [ t text = label text ] ].
	parentMenu := parentMenu first.
	
	y := 0.
	maxWidth := items ifNotEmpty: [(items collect: [ :item | item rawmenu width]) max] ifEmpty: [0].
	pos1:= parentMenu position + ((((parentMenu width)/2 + 5)negated)@((parentMenu height)/2+3.4)).
	items do: [ :item | y := y + (item rawmenu height).].
	pos2:= pos1 + ((maxWidth+20)@(y + 5)).
	self menuBackground: (TRBoxShape new from: pos1 to: pos2; color: (self menuBackgroundColor); strokePaint: nil"(Color gray darker alpha: 0.3)").
	
	view canvas addFixedShape: (self menuBackground).
	(self menuBackground) pushBack.
	^ (self menuBackground). 