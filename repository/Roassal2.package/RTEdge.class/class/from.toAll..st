public
from: fromElement toAll: toElementss
	"Takes instances of RTElement as first argument and a collection of RTElements as second argument"
	^ RTGroup withAll: (toElementss collect: [ :e | self from: fromElement to: e ])