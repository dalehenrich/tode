examples
example04
		
	| b |
	b := RTStackBarPlot new.
	b interaction popupText; draggable.
	b colorPalette colors: (Array with: Color blue with: Color lightBlue ).
	b add: #(37	33	0	0 0) title: 'DN1'.
	b add: #(24	26	17	3 0) title: 'DN2'.
	b add: #(25	29	15	1 0) title: 'DN3'.
	b add: #(30	33	6	1 0) title: 'DN4'.	
					
	b addLegend: #('strongly agree' 'agree' 'neutral' 'disagree' 'strongly disagree').
	b barWidth: 150 height: 20.

	b addLabelToBars: #key if: [ :assoc | assoc key > 10 ].
	b