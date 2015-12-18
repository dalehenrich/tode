public
paletteFor: aColorScheme
	"Returns an instance of CPDiverging, CPQualitative or CPSequential depending on which of them has the color scheme"
	^ ((self subclasses collect: [:cls | Array with: cls with: cls palette ] ) detect: [ :p | p second keys includes: aColorScheme ]) first new