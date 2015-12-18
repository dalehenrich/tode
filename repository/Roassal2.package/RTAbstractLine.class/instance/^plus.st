public
+ anotherShape
	"Compose this shape with another shape"
	anotherShape line: self.
	^ RTCompositeShape with: self with: anotherShape instance