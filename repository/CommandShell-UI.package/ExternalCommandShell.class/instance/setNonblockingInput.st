initialize-release
setNonblockingInput

	Smalltalk at: #OSProcess ifPresent:
		[:osp | osp thisOSProcess stdIn setNonBlocking]
