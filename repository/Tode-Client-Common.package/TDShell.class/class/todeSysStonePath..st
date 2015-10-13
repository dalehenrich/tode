home
todeSysStonePath: stoneName
	^ Smalltalk os environment at: 'GS_SYS_STONES' ifAbsent: [ self todeSysPath , '/stones/' , stoneName , '/' ]