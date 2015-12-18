private
assignLabels: aNodeCollection 
	"Initialize label dictionary"
	| label vertices parentLabels |
	labels := IdentityDictionary new.
	label := 1.	"Assign labels to the roots"
	(self rootNodesFor: aNodeCollection) do: 
		[ :node | 
		labels 
			at: node
			put: label.
		label := label + 1 ].	"Assign labels to the rest"
	[ labels keys size < aNodeCollection size ] whileTrue: 
		[ vertices := SortedCollection sortBlock: self sortBlock.
		aNodeCollection do: 
			[ :node | 
			(labels includesKey: node) ifFalse: 
				[ parentLabels := ((self parentsFor: node) collect: 
					[ :pn | 
					labels 
						at: pn
						ifAbsent: [ self maxFloat ] ]) asSortedCollection.
				parentLabels last ~= self maxFloat ifTrue: [ vertices add: node -> parentLabels ] ] ].
		labels 
			at: vertices first key
			put: label.
		label := label + 1 ]