computing
fade: element element: target
	"recursive fade the elements"
	
	| res v |
	res := true.
	(element = target) ifTrue: [ res := false. ].
	
	(self children: element) do: [ :node | 
		v := self fade: node element element: target.
		v ifTrue: [ self fade: node element ]
		ifFalse: [ res := false. ].
	].

	^ res.
	