public
annotatedFrequency
	"Return a list of elements, each following the template:
	{numberOfV . v} "
	| answer s amountOfK |
	answer := OrderedCollection new.
	s := numbers asSet asSortedCollection: [ :a :b | a < b ].
	s do: [ :k |
		amountOfK := (numbers select: [ :vv | vv = k ]) size.
		answer add: (Array with: amountOfK with: k) ].
	^ answer asArray