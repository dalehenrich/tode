Private
setAutoCommit: commitBool autoAbort: abortBool autoMigrate: migrateBool

	supportsAutoAbort 
		ifTrue: [ 
			[ self jadeServer setAutoCommit: commitBool autoAbort: abortBool autoMigrate: migrateBool ]
			 	on: Error
				do: [:ex | supportsAutoAbort := false ].
			self jadeServer setAutoCommit: commitBool autoMigrate: migrateBool ]
		ifFalse: [ self jadeServer setAutoCommit: commitBool autoMigrate: migrateBool ].
	