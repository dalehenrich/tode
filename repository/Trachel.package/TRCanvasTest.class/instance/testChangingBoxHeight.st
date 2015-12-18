shapes
testChangingBoxHeight
	| box |
	box := TRBoxShape new.
	self assert: box height = 0.
	box height: 15.
	self assert: box height = 15.
	box height: 20.
	self assert: box height = 20
