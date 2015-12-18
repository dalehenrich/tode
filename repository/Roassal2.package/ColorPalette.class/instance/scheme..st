public
scheme: aString 
	|palette scheme nbOfColors |
	palette := self palette.
	
	"ERROR: scheme not found"
	scheme := palette at: aString ifAbsent: [ 
		^ self error: 'Scheme not found. Try with: ',(', ' join: palette keys)].
	
	nbOfColors := scheme keys max.
	
	"Convert to list of colors and return"
	^ self convertSchemeToColors:  (scheme at: nbOfColors ifAbsent: [ 
			self error: 'Please, choice a number between: ', (',' join: scheme keys).
		 ])