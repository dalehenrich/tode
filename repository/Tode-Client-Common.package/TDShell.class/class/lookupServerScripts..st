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
						ifTrue: [ ^ path ] ].
			self
				error: 'The script ' , scriptFilename printString , ' was not found in the local|default/server/scripts directories' ].
	^ self todeRoot , '/' , self serverScriptsPath , scriptFilename