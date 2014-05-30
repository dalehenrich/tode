instance creation
openFrom: filepath
	| sessionDescription |
	sessionDescription := TDSessionDescription importFrom: filepath.
	^ self openOnSessionDescription: sessionDescription