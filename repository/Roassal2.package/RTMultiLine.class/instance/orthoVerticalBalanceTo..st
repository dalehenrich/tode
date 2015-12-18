public - configuration
orthoVerticalBalanceTo: balance
	"0 = level of fromPoint
	 0.5 = middle
	 1 = level of toPoint"

	self
		block: [ :fromPoint :toPoint | 
			| midy |
			midy := toPoint y * balance + (fromPoint y * (1 - balance)).
			Array
				with: fromPoint
				with: fromPoint x @ midy
				with: toPoint x @ midy
				with: toPoint ]