initialization
initialize
	super initialize.
	tableFrequency := Dictionary new.
	tableObjects := Dictionary new.
	dictionary := RTEnglishDictionary new.
	maxHeight := self defaultMaxHeight.
	minHeight := self defaultMinHeight.
	maxWords := self defaultMaxWords.
	layout := self defaultLayout.