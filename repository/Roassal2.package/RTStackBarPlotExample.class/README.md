RTStackBarPlotExample new installTitle: 'SimpleWithDifferentColor' 
		code:
		'
| b |
b := RTStackBarPlot new.
b interaction popupText.
b colorPalette colors: { Color blue . Color gray . Color red }.
b add: #(1 2 3 4 ).
b add: #(4 3 2 1).
b add: #(5 3 2 0).

b barWidth: 200 height: 20.
b open.
^ b view canvas'
	