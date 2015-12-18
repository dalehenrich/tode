public
elementsFromModels: objects
	"Return elements that corresponds to the objects provided as parameter. If none is found, then return an empty collection"
	| answer t |
	self assert: [ objects isCollection ] description: 'Provide a set of elements instead of one single element'. 
	answer := RTGroup new.
	objects do: [ :o |
		t := self elementFromModel: o.
		t notNil ifTrue: [ answer add: t ] ].
	^ answer