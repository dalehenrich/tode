instance creation
obConfigureWith: aDescription

	| creationString description |
	creationString := OBMultiLineTextRequest prompt: 'Edit template and save' template: aDescription editTemplate.
	(creationString isNil or: [creationString isEmpty]) ifTrue: [ ^nil ].
	description := self readFrom: creationString readStream.
	^description