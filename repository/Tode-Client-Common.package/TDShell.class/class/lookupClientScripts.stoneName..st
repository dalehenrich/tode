home
lookupClientScripts: scriptFilename stoneName: stoneName
	self useTodeSys
		ifTrue: [ 
			{(self todeSysStonePath: stoneName).
			(self todeSysLocalClientScriptsPath).
			(self todeSysDefaultClientScriptsPath)}
				do: [ :rootPath | 
					| path |
					path := rootPath , scriptFilename.
					path asFileReference exists
						ifTrue: [ ^ path ] ].
			self
				error:
					'The script ' , scriptFilename printString , ' was not found in the stone|local|default/client/scripts directories' ].
	^ self todeRoot , '/' , self clientScriptsPath , scriptFilename