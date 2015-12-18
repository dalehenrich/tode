export
fileOutMethods
	self methods
		do: [:ea | self fileOutMethod: ea]
		displayingProgress: 'Filing out methods...'