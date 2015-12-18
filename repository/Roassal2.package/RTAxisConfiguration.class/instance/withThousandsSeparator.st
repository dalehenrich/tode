configuration
withThousandsSeparator
	self labelConversion: [ :number | number asInteger asStringWithCommas ] 