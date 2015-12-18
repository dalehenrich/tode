public - lines
connectColor: aColor
	"Draw a line between each point, of a given color"
	^ self connectUsing: (RTLine new color: aColor)