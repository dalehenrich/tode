showing palette
addTitleTo: groups on: view
	|label|
	label := (RTLabel new text: (self class paletteName)) element.
	label translateBy: 0 @label height negated.
	view add: label.
	
	"Adding info"
	label @ (RTPopup new group: [:infoGroup :el |
			| background elements|
			elements := OrderedCollection new.
			background := (RTBox new color: (Color white alpha: 0.7)) element.
			
			"add name of subpalette on the left of palette"
			(';' split: self class info) do: [ :line | 
				elements add: (RTLabel new text: line) element.
			 ].
			RTVerticalLineLayout on: elements.
			RTNest new centerOn: background elements: elements.
			
			infoGroup add: background .
			infoGroup addAll: elements.
		]).
		
