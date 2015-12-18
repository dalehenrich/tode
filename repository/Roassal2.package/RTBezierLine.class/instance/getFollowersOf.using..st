control points
getFollowersOf: aNode using: followBlock
	| answer view t |
	answer := OrderedCollection new.
	view := aNode view.
	t := view elementFromModel: (followBlock rtValue: aNode model).
	[ t notNil ]
		whileTrue: [ 
			answer add: t.
			t := view elementFromModel: (followBlock rtValue: t model) ].
	^ answer asArray