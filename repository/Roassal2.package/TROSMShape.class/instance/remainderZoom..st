private
remainderZoom: z
	"Remainder zoom to apply on the display."

	^ self pixelLength * canvas camera scale * (256 / 255) asFloat / (2 raisedTo: z)