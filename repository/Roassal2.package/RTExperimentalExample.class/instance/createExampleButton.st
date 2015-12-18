as yet unclassified
createExampleButton
	| shape base |
	base := Color r: 0 g: 84 b: 85 range: 256.
	shape := RTCompositeShape new
		add: (RTEllipse new width: 103; height: 50; 
			color: Color gray);
		add: (RTEllipse new width: 97; height: 47; 
			color: base );
		add: (RTEllipse new width: 71; height: 21;
			color: (LinearGradientPaint new start: 0@0; stop: 0@0.7;
colorRamp: {0.0 -> (Color white alpha: 0.4). 
1.0 -> Color transparent})) translateBy: 0@ -10;
		add: (RTLabel new text: 'Swap Data'; color: Color white).
		
	^ shape element.

	