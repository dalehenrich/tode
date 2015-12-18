events-roassal
relativePositionFor: evt
	"Return the position within the window"
	^ evt position - self bounds origin
	"^ trachelCanvas camera fromPixelToSpace: (evt position - self bounds origin) "