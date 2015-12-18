public
from: fromElement to: toElement
	"Takes instances of RTElement as arguments"
	^ self 
		on: fromElement model -> toElement model 
		from: fromElement 
		to: toElement