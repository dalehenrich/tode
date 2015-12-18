hooks
updateFor: element trachelShape: trachelShape

	| vs p path x y stepHorizontal stepVertical w h min max ny |
	vs := self valuesFor: element.
	w := self widthFor: element.
	h := self heightFor: element.
	stepHorizontal := w / vs size.
	min := vs min.
	max := vs max.
	stepVertical := h / (max - min + 1).
	
	p := (element position - ((w / 2) @ (h negated / 2))).
	x := p x.
	y := p y.
	ny := vs first - min * stepVertical.
	path := 'M', x asInteger asString, ',', (y - ny) asInteger asString.
	
	vs size = 1
		ifTrue: [ 
			x := x + stepHorizontal.
			path := path, 'L', x asInteger asString, ',', (y - ny) asInteger asString ]
	
		ifFalse: [
			vs allButFirstDo: [ :v |
				x := x + stepHorizontal.
				ny := (v - min * stepVertical).
				path := path, 'L', x asInteger asString, ',', (y - ny) asInteger asString.
			] ].
	trachelShape resetPath.
	trachelShape path: path.
	
	"We manually specify the extent of the shape. If we do not do it, then the path will be used to determine the encompassing rectangle"
	trachelShape setExtent: w @ h
	
	