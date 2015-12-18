sources
exampleSliderAndCubeHelix
	| v helix shape elements slider |
	v := RTView new.
	helix := RTCubeHelix new.
	helix rotations: 2.
	helix gamma: 2.
	shape := (RTBox new height: 300; width: 1; color: [ :model | helix level: model ]).
	elements := shape elementsOn: (0.0 to: 1.0 by: 0.002).
	v addAll: elements.
	RTHorizontalLineLayout new gapSize: 0; on: elements.

	"Set the gamma value"
	slider := RTSlider new.
	slider view: v.
	slider labelled.
	slider callback: [ :aValue | helix gamma: 5 * aValue. elements updateShape ].
	slider moveBelow.
	slider build.

	"Set the rotation value"
	slider := RTSlider new.
	slider view: v.
	slider labelled.
	slider callback: [ :aValue | helix rotations: 5 * aValue. elements updateShape ].
	slider moveBelow.
	slider build.

	^ v