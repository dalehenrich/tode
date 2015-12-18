camera
testCameraProjection
	| v camera |

	v := RTView new.
	camera := v canvas camera.

	self assert: ((camera fromPixelToSpace: (camera fromSpaceToPixel: (10@10))) closeTo: (10.0 @ 10.0))