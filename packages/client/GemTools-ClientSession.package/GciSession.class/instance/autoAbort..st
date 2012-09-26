Accessors
autoAbort: aBoolean

	supportsAutoAbort ifFalse: [ ^self ].
	AutoAbort := aBoolean.
	self setAutoCommit: self autoCommit autoAbort: self autoAbort autoMigrate: self autoMigrate
	