public
colors: nbOfColors scheme: aString 
	|palette scheme|
	palette := self palette.
	
	"ERROR: number of colors is not an integer."
	nbOfColors isInteger ifFalse: [ 
		^ self error: 'Please, provide a correct number of colors' ].
	
	"ERROR: scheme not found"
	scheme := palette at: aString ifAbsent: [ 
		^ self error: 'Scheme not found. Try with: ',(', ' join: palette keys)].
	
	"Convert to list of colors and return"
	^ self convertSchemeToColors:  (scheme at: nbOfColors ifAbsent: [ 
			self error: 'Please, choice a number between: ', (',' join: scheme keys).
		 ])