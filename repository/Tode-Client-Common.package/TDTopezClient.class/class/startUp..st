class initialization
startUp: resuming
	resuming
		ifTrue: [ self allSubInstances do: [:client | client shutdown] ]