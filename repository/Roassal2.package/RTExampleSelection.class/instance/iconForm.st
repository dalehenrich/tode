accessing
iconForm
	|icon64Mime|
	icon64Mime := self provider perform: (self selector, 'Icon') asSymbol.
	^ TRPlatform current formClass fromBinaryStream: 
		(TRPlatform current  mimeDecodeToBytes: icon64Mime readStream) 