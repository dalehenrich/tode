private
with: object do: block
	| objectOop index |
	objectOop := object class = TZProxyGemStone
	ifTrue: [object oop]
	 ifFalse: [object asOop].
	referencePolicy = #ignore 
		ifTrue: [ ^ block value ].
	(index := objects at: objectOop ifAbsent: [ nil ]) notNil
		ifTrue: [
			referencePolicy = #error
				ifTrue: [ ^ STONWriterError signal: 'Shared reference detected' ].
			self writeReference: index ]
		ifFalse: [
			index := objects size + 1.
			objects at: objectOop put: index.
			oops add: object.
			block value ]