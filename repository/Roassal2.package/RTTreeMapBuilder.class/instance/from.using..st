building
from: objects using: ablock

	rootNodes := objects collect: [:obj | self createElements: obj using: ablock depth: 1 ].
	
	^ rootNodes