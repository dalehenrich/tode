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
						ifTrue: [ ^ path ] ] ].
	^ self todeRoot , '/' , self windowLayoutPath , windowLayoutFilename