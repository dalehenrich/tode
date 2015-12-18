visitor
visitBitMapShape: aBitmapShape
	| s icon64 |
	s := WriteStream on: ByteArray new.
	
	TRPlatform current pngReadWriterClass putForm: (aBitmapShape form) onStream: s.
	
	icon64 := (TRPlatform current mimeEncode: s contents readStream multiLine: false).
	stream nextPutAll: '
		{type: "bitmap", id: "';
		nextPutAll: (self nameFor: aBitmapShape);
		nextPutAll: '", base64: "';
		nextPutAll: icon64;
		nextPutAll: '", w: ';
		nextPutAll: aBitmapShape width asString;
		nextPutAll: ', h: ';
		nextPutAll: aBitmapShape height asString;
		nextPutAll: ', '.
	self addInteractions: aBitmapShape element.
	self addMatrix: aBitmapShape matrix.
	s close.