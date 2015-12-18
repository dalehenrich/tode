hooks
initializeElement: element
	| c |
	self prepareElement: element.
	self doUpdate: element.
	
	c := TRTranslationCallback new.
	c block: [ :aShape :aStep | self doUpdate: element ].
	element trachelShape addCallback: c.
	element view canvas camera addCallback: c.