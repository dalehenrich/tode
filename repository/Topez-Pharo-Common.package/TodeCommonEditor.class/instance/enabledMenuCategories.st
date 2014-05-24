menu support
enabledMenuCategories
	enabledMenuCategories ifNil: [ enabledMenuCategories := IdentitySet new ].
	^ enabledMenuCategories