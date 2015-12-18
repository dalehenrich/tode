accesing
methods

	^ methods ifNil: [ 
		methods := OrderedCollection new.
		self packages do: [ :pkg | methods addAll: pkg asRPackage methods ].
		methods ].