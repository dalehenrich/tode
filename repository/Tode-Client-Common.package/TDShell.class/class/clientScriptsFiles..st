home
clientScriptsFiles: stoneName
	self useTodeSys
		ifTrue: [ 
			| map |
			map := Dictionary new.
			{(self todeSysStonePath: stoneName).
			(self todeSysLocalClientScriptsPath).
			(self todeSysDefaultClientScriptsPath)}
				do: [ :rootPath | 
					| reference |
					reference := rootPath asFileReference.
					reference exists
						ifTrue: [ reference files do: [ :fileRef | map at: fileRef basename put: fileRef ] ] ].
			^ map values ].
	^ self todeRoot , '/' , self clientScriptsPath asFileReference files