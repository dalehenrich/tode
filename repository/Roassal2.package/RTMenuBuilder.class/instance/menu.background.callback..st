public
menu: aTitle background: aColor callback: callback 
	"Return a trachel shape, in which the callback has been set up"
	^ self menu: aTitle background: aColor highlightColor:  (aColor alpha: (aColor alpha + 0.2)) callback: callback. 