sources
exampleScrollZoom

	| v |
	v := RTView new.
	v @ RTZoomableView.
	v @ RTDraggableView.
	v add: (RTLabel new elementOn:
'Scroll your mouse wheel
while hovering cursor
over the view to zoom it').

	^ v