accessing
defaultRuntimeError
	^ (TDRuntimeError gciSession: self gciSession gci32xErrSType: gci32xErrSType) signal