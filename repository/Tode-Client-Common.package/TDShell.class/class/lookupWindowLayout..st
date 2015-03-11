home
lookupWindowLayout: windowLayoutFilename
	self useTodeSys
		ifTrue: [ 
			{(self todeSysLocalWindowLayoutPath).
			(self todeSysDefaultWindowLayoutPath)}
				do: [ :rootPath | 
					| path |
					path := rootPath , windowLayoutFilename.
					path asFileReference exists
						ifTrue: [ ^ path ] ].
			self
				error:
					'The window layout ' , windowLayoutFilename printString
						, ' was not found in the local|default/client/windowLayout directories' ].
	^ self todeRoot , '/' , self windowLayoutPath , windowLayoutFilename