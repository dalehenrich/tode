public-rendering
rotateLabelIfNecessary: label
	"Rotate and position the label if necessary"
	config areLabelRotated ifFalse: [ ^ self ].
	label rotateByDegrees: config labelRotation.
	label translateBy: (label width / -2 * config labelRotation degreesToRadians cos @ 
								(label width / -2 * config labelRotation degreesToRadians sin)) "+ (5 @ 0)".