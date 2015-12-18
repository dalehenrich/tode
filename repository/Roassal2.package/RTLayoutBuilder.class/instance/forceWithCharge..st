public - layout
forceWithCharge: aBlockOrANumber
	"E.g -300"
	layout := RTForceBasedLayout new.
	layout charge: aBlockOrANumber.
	^ layout