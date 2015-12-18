export
fileOutInitializers		
	(self classes select: [:c | c class includesSelector: #initialize])
		do: [:class | self fileOutInitializerForClass: class].