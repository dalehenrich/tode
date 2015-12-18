public
menu: aTitle callback: callback
	"Return a trachel shape, in which the callback has been set up"
	"callback is a zero-arg block, without argument therefore"
	^ self menu: aTitle background: (Color gray darker alpha: 0) callback: callback.