export
fileOutClassDefinitions
	(Class superclassOrder: self classes)
		do: [:ea | self fileOutClassDefinition: ea]
		displayingProgress: 'Filing out classes...'