public
roassalIcon
	^ Form fromBinaryStream: (Base64MimeConverter mimeDecodeToBytes: self roassalIconContents readStream)