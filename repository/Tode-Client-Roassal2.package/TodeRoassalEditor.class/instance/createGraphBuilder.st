private
createGraphBuilder
	| b anim |
	self roassalView clean.
	b := TodePointerDetective new.
	b view: roassalView.
	b builder
		addListenerBlock: [ :n | 
			anim := RTNopAnimation new.
			anim
				waitFor: 0.3
				after: [ 
					b2 notifyWith: n element.
					b1 notifyWith: n element ].
			b builder view addAnimation: anim ].
	self view signalUpdate