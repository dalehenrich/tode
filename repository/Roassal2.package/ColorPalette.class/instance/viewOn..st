showing palette
viewOn: view
	
	| palette groups nbOfColors |
	palette := self class palette.
	groups := RTGroup new.
	nbOfColors := 10.
	
	"Draw palettes"
	palette keysAndValuesDo: [ :subPaletteName :subPalletes |
			groups add: (self drawSubPallete: (subPalletes at: (subPalletes keys max)) 
									named: subPaletteName 
									on: view).
		 ].	

	RTVerticalLineLayout on: groups.
	groups do: [ :aGroup | view addAll: aGroup ].
	
	"add title and info"
	self addTitleTo: groups on: view.