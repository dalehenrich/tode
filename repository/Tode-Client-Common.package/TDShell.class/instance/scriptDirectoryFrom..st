built-ins
scriptDirectoryFrom: options
	options
		at: 'clientScriptPath'
		ifPresent: [ :dirname | 
			| path |
			path := dirname.
			(dirname beginsWith: '/')
				ifFalse: [ path := TDShell updateServerHome , dirname ].
			^ self filetreeUtilityClass directoryFromPath: path ]
		ifAbsent: [ 
			options
				at: 'serverScriptPath'
				ifPresent: [ :dirname | 
					| path |
					path := dirname.
					(dirname beginsWith: '/')
						ifFalse: [ path := TDShell updateServerHome , dirname ].
					^ self filetreeUtilityClass directoryFromPath: path ] 
				ifAbsent: [ ^self scriptDirectoryFromBaselineOfTode ]]