accessing
fileName
	fileName = nil
		ifTrue: [ fileName := (Time current asString  copyReplaceAll: ':' with: '') squeezeOutNumber asString.
			 fileName := 'output',fileName.].
	^ fileName