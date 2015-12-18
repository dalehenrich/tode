public-configuration
borderWidthConstant
	"Make that the width is constant, independent of its scale"
	self borderWidth: [ :e | (1 / (self scaleFor: e)) asFloat ]