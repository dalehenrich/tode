initialization
initialize
	super initialize.
"	rectangle := -300 @ -300 corner: 300 @ 300.
"	tiles := Dictionary new.
	emptyTile := Form extent: 256 @ 256.
	semaphore := Semaphore forMutualExclusion.
	copyright := TRLabelShape new
		fontSize: 8;
		text: '© OpenStreetMap contributors'.
"	copyright translateTo: rectangle corner - (copyright extent / 2)"