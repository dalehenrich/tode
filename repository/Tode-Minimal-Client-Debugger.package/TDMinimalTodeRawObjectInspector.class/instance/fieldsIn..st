private building
fieldsIn: composite
	^ composite table
		shouldValidate: false;
		allowsRecursiveSearch: false;
		"wantsSteps: true;"
		display: [ :aClientElement | 
			self fieldsFor: aClientElement ]