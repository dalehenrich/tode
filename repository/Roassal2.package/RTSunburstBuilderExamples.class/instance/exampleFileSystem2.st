sources
exampleFileSystem2

	| b c1 c2 |
	b := RTSunburstBuilder new.
	b strategy: RTSunburstExtentStrategy new.
	b radialSpacing: 3.
	c2 := Color r: 177/255.0 g: 175/255.0 b: 134/255.0.
	c1 := Color r: 98/255.0 g: 101/255.0 b: 73/255.0.
	b shape color: [ :e | e isDirectory ifTrue: [ c2 ] ifFalse: [ c1 ] ].
	b explore: TRPlatform current workingDirectory
		using: [:file |	| children |
				[ children := file isDirectory ifTrue: [ file children ] ifFalse: [ #() ] ]
				on: Error do: [ children := #() ].
				children ] .
			
	b strategy hasCenter: false.
	b view @ RTDraggableView.
	b build.
	^ b view