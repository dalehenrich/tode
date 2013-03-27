initialize-release
setStdioStreams

	Smalltalk
		at: #OSProcess
		ifPresent: [:osp | 
			self inputStream: osp thisOSProcess stdIn
				asBufferedAsyncFileReadStream disableEventHandling.
			self cliShell outputStream: osp thisOSProcess stdOut.
			self cliShell errorStream: osp thisOSProcess stdErr]