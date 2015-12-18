morphic
layoutChanged 
	"react on morph resize"
	super layoutChanged.
	self checkSession.
	surface ifNotNil: [  
		self extent asIntegerPoint ~= surface extent ifTrue: [ 
			self createSurface.
			trachelCanvas extent: self extent ]
	].
	