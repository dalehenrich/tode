*roassal2
commonSuperclassWith: aClass
	"
	Metaclass commonSuperclassWith: Class
	Metaclass commonSuperclassWith: Point
	Metaclass commonSuperclassWith: Metaclass
	Object commonSuperclassWith: RTPopup class
	"
	| t1 t2 |
	self == aClass ifTrue: [ ^ self ].
	t1 := self withAllSuperclasses reverse.
	t2 := aClass withAllSuperclasses reverse.
	1 to: (t1 size min: t2 size) do: [ :i |
		(t1 at: i) ~~ (t2 at: i)
			ifTrue: [ ^ t1 at: (i - 1) ] ].
	
	^ t1 size < t2 size 
		ifTrue: [ t1 last ]
		ifFalse: [ t2 last ]