showing palette
drawSubPallete: rawColors named: subPaletteName on: view
	| colors group label |
	group := RTGroup new.
	colors := rawColors collect: [ :t | Color fromRgb256Triplet: t ].
	
	colors do: [ :c | |el|
			el := (RTElement on: c) + (RTBox new size: 20; color: c).
			el @ RTPopup.
			el @ (RTMouseHoverZoom new desiredExtent: [ :anElement | anElement extent * 1.7 ]).
			group add: el.
			view add: el.
		 ].
	
	label := (RTLabel new text: subPaletteName) element.	
	label @ RTHighlightable.
	label when: TRMouseClick do: [:evt | Workspace new contents: 'ColorPalette ',(self class paletteName asLowercase),' colors: anInteger scheme:','''',subPaletteName,''''; open ].	
	view add: label.
	TRConstraint stick: label trachelShape onTheLeftOf: group first trachelShape. 
	
	RTHorizontalLineLayout on: group.
	^ group.
	