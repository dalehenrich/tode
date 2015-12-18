*Roassal2
red: r green: g blue: b alpha: a
	"Return a color with the given r, g, and b components in the range [0.0..255]."

	^ self r: (r/255 asFloat) g: (g/255 asFloat) b: (b/255 asFloat) alpha: a