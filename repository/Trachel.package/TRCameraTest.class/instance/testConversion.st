conversion
testConversion
	self assert: ((camera fromSpaceToPixel: 0 @ 0) closeTo: (canvas extent / 2)).
	self assert: ((camera fromSpaceToPixel: 10 @ 10) closeTo: ((canvas extent / 2) + (10 @ 10))).

	self assert: (camera fromPixelToSpace: (canvas extent / 2)) = (0 @ 0).
	self assert: ((camera fromPixelToSpace: ((canvas extent / 2) + (10 @ 10))) closeTo: (10 @ 10)).
	
	camera
		translateTo: 5 @ -15; 
		scale: 2.
	
	self assert: (camera fromSpaceToPixel: 0 @ 0) = (canvas extent / 2 - (10 @ -30)).
	self assert: (camera fromSpaceToPixel: 10 @ 10) = ((canvas extent / 2) + (10 @ 50)).

	self assert: (camera fromPixelToSpace: (canvas extent / 2 - (10 @ -30))) = (0 @ 0).
	self assert: (camera fromPixelToSpace: ((canvas extent / 2) + (10 @ 50))) = (10 @ 10).
	
	camera
		translateTo: 21578 @ -1239;
		scale: 736.
		
	self assert:
		((camera fromPixelToSpace: (camera fromSpaceToPixel: 100 @ 100))
		closeTo: 100 @ 100).
			
	self assert:
		((camera fromSpaceToPixel: (camera fromPixelToSpace: 100 @ 100))
		closeTo: 100 @ 100)