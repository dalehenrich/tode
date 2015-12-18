utility
convertIntoSVGCountryName: aName
	| normalizedName |
	aName = 'Mauritius' ifTrue: [ ^ #Mauritania ].
	aName = 'Russian Federation' ifTrue: [ ^ #Russia ].
	aName = 'Turkey' ifTrue: [ ^ #RepublicofTurkey ].
	
	#(
		#('FR' #France) 
		#('UK' #GreatBritian)
		#('DE' #Germany)
		#('US' #UnitedStates)
		#('CH' #Switzerland)
		#('CA' #Canada)
		#('AU' #Austria)
		#('IE' #Israel)
		#('IT' #Italy)) do: [ :arr | arr first = aName ifTrue: [ ^ arr second ] ].
	
	normalizedName := (aName copyWithoutAll: '. ') asSymbol.
	^ (RTSVGPath class methodDict keys includes: normalizedName)
			ifTrue: [ normalizedName ]
			ifFalse: [ nil ]