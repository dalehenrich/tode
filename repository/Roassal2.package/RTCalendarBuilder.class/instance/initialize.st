initialization
initialize
	super initialize.
	dateShape := RTShapeBuilder new.
	dateShape label text: [:date | date dayOfMonth ].
	
	dayLabelShape := RTShapeBuilder new.
	dayLabelShape rectangle size: 0.
	
	self dateSelector: #yourself.
	
	monthShape := RTShapeBuilder new.
	monthShape composite: [ :s | 
		s add: (RTLabel new text: [ :d | d name ]).
		s add: (RTBox new color: Color transparent; borderColor: Color lightGray) ].
	
	yearShape := RTShapeBuilder new.
	yearShape rectangle color: Color transparent.
	
	dateLayout := RTLayoutBuilder new.
	dateLayout date.
	monthLayout := RTLayoutBuilder new.
	monthLayout grid gapSize: 10.
	yearLayout := RTLayoutBuilder new.
	yearLayout grid gapSize: 10.
	
	dateInteraction := RTInteractionBuilder new.
	monthInteraction := RTInteractionBuilder new.
	yearInteraction := RTInteractionBuilder new.
	
