sources
exampleSurveyResult
	| b |
	b := RTStackBarPlot new.
	b interaction popupText.
	b colorPalette colors: (Array with: Color blue with: Color lightBlue ).
	b add: #(37	33	0	0 0) title: 'DN1'.
	b add: #(24	26	17	3 0) title: 'DN2'.
	b add: #(25	29	15	1 0) title: 'DN3'.
	b add: #(30	33	6	1 0) title: 'DN4'.	
					
	b addLegend: #('strongly agree' 'agree' 'neutral' 'disagree' 'strongly disagree').
	b barWidth: 260 height: 20.

	b addLabelToBars: [ :assoc | (assoc key  / b totalSum * 100) asInteger asString, '%' ] if: [:assoc | assoc key > 5 ] color: Color white.

	b build.
	^ b view