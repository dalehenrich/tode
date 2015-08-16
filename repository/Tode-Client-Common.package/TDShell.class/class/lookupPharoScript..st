as yet unclassified
lookupPharoScript: scriptFilename
	{(self todeSysLocalPharoPath).
	(self todeSysDefaultPharoPath)}
		do: [ :rootPath | 
			| path |
			path := rootPath , scriptFilename.
			path asFileReference exists
				ifTrue: [ ^ path ] ].
	self error: 'The script ' , scriptFilename printString , ' was not found in the local|default/pharo directories'