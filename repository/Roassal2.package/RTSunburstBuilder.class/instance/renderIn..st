hooks
renderIn: aView
	strategy on: elements.
	aView addAll: elements.
	"visitor lines do: [ :line | aView canvas addShape: line]."
	