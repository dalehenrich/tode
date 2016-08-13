accessing
defaultRuntimeError
	^ (TDRuntimeTransactionError gciSession: self gciSession gci32xErrSType: gci32xErrSType) signal