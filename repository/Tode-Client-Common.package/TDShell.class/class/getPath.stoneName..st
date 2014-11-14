home
getPath: relativePath stoneName: stoneName
	^ self useTodeSys
		ifTrue: [ self chooseSysPathFor: relativePath stoneName: stoneName ]
		ifFalse: [ self todeRoot , relativePath ]