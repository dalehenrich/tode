visitor-interactions
visitInteractions: anObject
	| first list temp |
	
	first := true.
	list := OrderedCollection new.
	temp := OrderedCollection new.
	(anObject announcer subscriptions trSubscriptions do: [ :sub | 
		((validInteractions includes: sub subscriber class name) 
		and: [ (temp includes: sub subscriber class) not ]) ifTrue: [ 
			temp add: sub subscriber class.
			list add: sub ] ] ).
	stream nextPutAll: '['.
	list do: [ :sub | 
		first ifTrue: [ first := false.
			sub subscriber accept: self with: anObject ]
		ifFalse: [ 
			stream nextPutAll: ', '.
			sub subscriber accept: self with: anObject ]
		 ].
	stream nextPutAll: ']'.
	self flag: 'review'.