public - configuration
orthoHorizontalBalanceTo: balance
	"0 = level of fromPoint
	 0.5 = middle
	 1 = level of toPoint"

	self
		block: [ :fromPoint :toPoint | 
			| midx |
			midx := toPoint x * balance + (fromPoint x * (1 - balance)).
			Array
				with: fromPoint
				with: midx @ fromPoint y
				with: midx @ toPoint y
				with: toPoint ]