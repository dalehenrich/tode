initialization
initialize
	super initialize.
	
	"Collection of data sets"
	datasets := OrderedCollection new.
	
	generator := RTLabelGenerator nice: RTNiceStepSizeGenerator new.
	self shouldUseNiceLabels: true.