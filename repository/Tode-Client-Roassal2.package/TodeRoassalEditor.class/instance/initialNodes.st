accessing
initialNodes
	^ self clientElement initialNodes do: [:each | each clientElement: self clientElement]