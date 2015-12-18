as yet unclassified
fromBuilder: b

	 ^ self new view: b view; encompassingRectangle: b encompassingRectangle; encompassingRectangleFromSpaceToPixel: b encompassingRectangleFromSpaceToPixel; size: b sizeBlock; movable: b movable; fixedPosition: b fixedPositionBlock; scrollBarType: b scrollBarType; barShape: b barShape; barSpecific: b barSpecific.