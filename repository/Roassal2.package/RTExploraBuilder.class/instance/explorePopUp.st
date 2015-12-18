adding
explorePopUp
	^ [ :group :elem |
			| background node |
			node := elem attributes at: #node.
			background := (RTBox new color: (Color lightGreen alpha: 0.95)) element.
			group add: (RTElement new model: elem model)
				+ (RTLabel new text: [ :e | popupText rtValue: e]).
			group addAll: (node expansionDirections collect: [
				:direction |
				(RTElement new model:
					((node expansionDirections size > 1
						ifFalse: ['']
						ifTrue: [(direction key) asString , ': ']),(
					(node explorationStatus: direction)
					))) + (RTLabel new height: 8)]).
			(RTVerticalLineLayout withGap: 0) on: group.
			
			RTNest new centerOn: background elements: group.
			group addFirst: background ]