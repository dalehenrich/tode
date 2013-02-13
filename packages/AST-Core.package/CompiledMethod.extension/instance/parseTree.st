*ast-core
parseTree
	^ RBParser parseMethod: self getSource asString onError: [ :msg :pos | ^ nil ]