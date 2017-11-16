accessing
alternateSessionDescriptionFor: aStoneName
	"self alternateSessionDescriptionFor: 'pharo_340_d'"

	^ self
		alternateSessionDescription:
			(TDSessionDescription
				importFrom: (Smalltalk os environment at: 'GS_HOME') asFileReference / 'sys' / 'local' / 'sessions' / aStoneName)