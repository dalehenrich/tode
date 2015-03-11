home
lookupServerScripts: scriptFilename 
	self useTodeSys
		ifTrue: [ 
			{(self todeSysLocalServerScriptsPath).
			(self todeSysDefaultServerScriptsPath)}
				do: [ :rootPath | 
					| path |
					path := rootPath , scriptFilename.
					path asFileReference exists
						ifTrue: [ ^ path ] ] ].
	^ self todeRoot , '/' , self serverScriptsPath , scriptFilename