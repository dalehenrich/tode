window bounds
importRawBoundsFrom: filepath
	"self importRawBoundsFrom: TDShell windowLayoutHome, 'rawBounds_medium'"

	FileStream readOnlyFileNamed: filepath do: [ :fileStream | bounds := STON fromStream: fileStream ]