accessing
userId

	userId == nil ifTrue: [ userId := self defaultUserId ].
	^userId