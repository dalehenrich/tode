running
setUp
	super setUp.
	nice := RTNiceStepSizeGenerator new.
	lg := RTLabelGenerator nice: nice.
	