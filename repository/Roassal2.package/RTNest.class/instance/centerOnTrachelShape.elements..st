public
centerOnTrachelShape: trachelShape elements: elements
	"Public method. This method does the following actions:
		- resize the backElement to encompasse all the elements
		- translate all the elements on top of backElement
		- perform a layout if one is set"

	behavior centerOnTrachelShape: trachelShape elements: elements asGroup.
"	self doLayoutIfNecessaryOn: elements.
	encompassingRectangle := self encompassingRectangleOf: elements.

	trachelShape extent: (encompassingRectangle width + (padding * 2)) @ (encompassingRectangle height + (padding * 2)).

	off := trachelShape encompassingRectangle center - encompassingRectangle center. 
	off := off asIntegerPoint.
	elements do: [ :e | e translateBy: off ].
	"