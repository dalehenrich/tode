sources
exampleFileSystem

	| b c1 c2 |
	b := RTSunburstBuilder new.
	b strategy: RTSunburstExtentStrategy new.
	c2 := Color r: 177/255.0 g: 175/255.0 b: 134/255.0.
	c1 := Color r: 98/255.0 g: 101/255.0 b: 73/255.0.
	b shape color: [ :e | Color random ].
	b explore: TRPlatform current workingDirectory
		using: [:file |	| children |
				[ children := file isDirectory ifTrue: [ file children ] ifFalse: [ #() ] ]
				on: Error do: [ children := #() ].
				children ] .
			
	b strategy hasCenter: false.
	b radialSpacing: 0.
	b view @ RTDraggableView.
	b build.
	b view canvas camera scale: 1.5.
	^ b view