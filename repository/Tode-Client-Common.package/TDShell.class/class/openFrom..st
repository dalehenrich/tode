instance creation
openFrom: filepath
	| sessionDescription |
	sessionDescription := OGCustomSessionDescription importFrom: filepath.
	^ self openOnSessionDescription: sessionDescription