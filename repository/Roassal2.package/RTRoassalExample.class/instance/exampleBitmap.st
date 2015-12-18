sources
exampleBitmap

	| v s |
	v := RTView new.
	s := RTBitmap new.
	s form: RTIcon roassal.
	v add: s element.
	^ v