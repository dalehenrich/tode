accessing
defaultRuntimeError
	^ (TDRuntimeHalt gciSession: self gciSession gci32xErrSType: gci32xErrSType) signal