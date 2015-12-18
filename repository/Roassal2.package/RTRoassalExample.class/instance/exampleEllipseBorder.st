sources
exampleEllipseBorder

|v shape |
v := RTView new.
shape := RTEllipse new
	size: 50;
	color: Color white;
	borderWidth: [ :vv | vv / 30 ];
	borderColor: Color black.
	
v addAll: (shape elementsOn: (1 to: 10)).
RTGridLayout on: v elements.
^ v
