*topez-pharo-common
colorAt: characterIndex
	| attributes color |
	self size = 0
		ifTrue: [ ^ nil ].	"null text tolerates access"
	attributes := runs at: characterIndex.
	color := nil.
	attributes
		do: [ :att | 
			(att isKindOf: TextColor)
				ifTrue: [ color := att color ] ].
	^ color