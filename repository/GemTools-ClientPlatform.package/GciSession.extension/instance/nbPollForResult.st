*gemtools-clientplatform
nbPollForResult
	GciUserInterruptHandler
		reset;
		arm.
	[ ^ self nbPollForResult: false ]
		ensure: [ GciUserInterruptHandler disarm ]