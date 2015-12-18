configuration
noDecimal
	"Make the axis labels without decimal"
	self labelConversion: [ :number | number asInteger ]