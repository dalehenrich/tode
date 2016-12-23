as yet unclassified
environmentId
	"not sure if environmentId is useful on the client side ... server probably needs to worry about that more"

	true
		ifTrue: [ ^ super environmentId ].
	^ self sessionDescription environmentId