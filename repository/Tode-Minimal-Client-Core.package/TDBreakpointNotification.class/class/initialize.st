initialization
initialize
	"self initialize"

	GsGci32xErrSType errorToExceptionMap
		at: 6002 put: self;
		"Breakpoint"
			at: 6005 put: self;
		"Code Breakpoint"
			at: 6006 put: self;
		"Stack Breakpoint"
			yourself