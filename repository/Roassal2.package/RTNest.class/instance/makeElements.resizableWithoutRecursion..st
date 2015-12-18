utility
makeElements: elements resizableWithoutRecursion: backElement
	"If an element of elements is resized, then the backElement should be resized as well.
	"
	| callback1 callback2 |
	callback1 := TRExtentCallback block: [ :shape :newsize |
		self resizeWithoutRecursion: backElement for: elements
	].
	callback2 := TRTranslationCallback block: [ :shape :newsize |
		self resizeWithoutRecursion: backElement for: elements
	].
	elements do: [ :e | e trachelShape addCallback: callback1 ; addCallback: callback2 ] 