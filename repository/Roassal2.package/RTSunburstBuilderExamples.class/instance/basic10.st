examples
basic10
	"
	self new basic10
	"	
	| b data |
	data := Array 
		with: 'Chile' -> (Array with: 'Santiago' with: 'Iquique' )
		with: 'France' -> (Array with: 'Paris' with: 'Nice').
	b := RTSunburstBuilder new.

	b 
		explore: data 
		using: [ :o | 
			o class == Association 
				ifTrue: [ o value ] 
				ifFalse: [ o isString 
									ifTrue: [ #() ] 
									ifFalse:  [ o ] ] ].
	b view @ RTDraggableView.
	b build.
	^ b view