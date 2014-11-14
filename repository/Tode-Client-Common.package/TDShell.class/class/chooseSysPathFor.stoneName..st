home-private
chooseSysPathFor: relativePath stoneName: stoneName
	self useTodeSys
		ifTrue: [ 
			{(self todeSysStonePath: stoneName).
			(self todeSysLocalPath).
			(self todeSysDefaultPath)}
				do: [ :rootPath | 
					| path |
					path := rootPath , relativePath.
					path asFileReference exists
						ifTrue: [ ^ path ] ] ].
	^ self todeRoot , relativePath