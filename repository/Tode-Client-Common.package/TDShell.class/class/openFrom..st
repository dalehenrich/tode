instance creation
openFrom: filepath
	| sessionDescription |
	sessionDescription := OGCustomSessionDescription importFrom: filepath.
	^ self new openOnSessionDescription: sessionDescription