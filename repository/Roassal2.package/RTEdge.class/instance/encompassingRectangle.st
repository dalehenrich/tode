accessing
encompassingRectangle
	"Return the encompassing rectangle of the elements"
	^ Rectangle merging: (Array with: self from encompassingRectangle with: self to encompassingRectangle)