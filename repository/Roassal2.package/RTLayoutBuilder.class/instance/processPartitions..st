public - partition
processPartitions: elements

	| groupOfElements els |
	groupOfElements := OrderedCollection new.
	partitions do: [ :tupple |
		"tupple = { conditionblock . layout }"
		els := elements select: [ :el | tupple first rtValue: el model ].
		tupple second on: els.
		groupOfElements add: els asGroup.
		 ].
	
	layout on: groupOfElements