private
gs_homeSysSessionsPath
	^ Smalltalk os environment
		at: 'GS_SYS_SESSIONS'
		ifAbsent: [ self error: 'The required environment variable GS_SYS_SESSIONS is not define.' ]