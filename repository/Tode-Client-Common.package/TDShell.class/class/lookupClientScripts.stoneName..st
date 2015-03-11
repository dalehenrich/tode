home
lookupClientScripts: scriptFilename stoneName: stoneName
	self useTodeSys
		ifTrue: [ 
			{(self todeSysStonePath: stoneName).
			(self todeSysLocalWindowLayoutPath).
			(self todeSysDefaultWindowLayoutPath)}
				do: [ :rootPath | 
					| path |
					path := rootPath , scriptFilename.
					path asFileReference exists
						ifTrue: [ ^ path ] ] ].
	^ self todeRoot , '/' , self clientScriptsPath , scriptFilename