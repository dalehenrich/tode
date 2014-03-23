instance creation
open
	| sessionDescription |
	sessionDescription := OGCustomSessionDescription seaside.
	^ self new openOnSessionDescription: sessionDescription