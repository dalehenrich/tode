instance creation
open
	| sessionDescription |
	sessionDescription := TDSessionDescription seaside.
	^ self new openOnSessionDescription: sessionDescription