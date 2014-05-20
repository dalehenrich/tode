window bounds
exportRawBoundsTo: filepath
	"self exportRawBoundsTo: TDShell windowLayoutHome, 'rawBounds_medium'"

	| stream |
	stream := FileStream forceNewFileNamed: filepath.
	stream lineEndConvention: #lf.
	STON put: self bounds onStreamPretty: stream.
	stream close