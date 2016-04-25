building
compose
	self title: [:anObject | 'Inspector on ', (self printObjectAsAnItem: anObject)].
	self pager with: [ :browser | 
		browser fixedSizePanes: self class numberOfInspectorPanes.
		browser show: [ :a :each |
			a title: [ self printObjectAsAnItem: each ].
			a dynamic 
				display: [ :x | 
					(GLMCompositePresentation new )
							startOn: x ] ] ].
