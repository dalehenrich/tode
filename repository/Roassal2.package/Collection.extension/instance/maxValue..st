*Roassal2-Core
maxValue: aBlock
	^ self inject: (aBlock value: self anyOne) into: [ :max :each | max max: (aBlock value: each) ]