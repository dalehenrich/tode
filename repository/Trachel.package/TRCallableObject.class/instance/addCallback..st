callbacks
addCallback: aCallback
	callbacks ifNil: [ callbacks := OrderedCollection new ].
	callbacks add: aCallback