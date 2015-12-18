hooks
createShapeBuilder
	| sb |
	sb := RTShapeBuilder new.
	sb
			rectangle; 
			height: self defaultBarHeight;
			color: [ :association | self colorPalette level: (association value / self numberOfValuesPerRow) ];
			yourself.
	^ sb