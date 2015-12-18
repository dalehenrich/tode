accessing - computed
numberOfEvents
	^ sets inject: 0 into: [ :sum :aSet | sum + aSet numberOfObjects ]