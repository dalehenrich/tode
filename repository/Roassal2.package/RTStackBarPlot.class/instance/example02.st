examples
example02

	
| b |
b := RTStackBarPlot new.
b interaction popupText; draggable.
b colorPalette colors: (Array with: Color blue with: Color gray with: Color red ).
b add: #(1 2 3 4 ).
b add: #(4 3 2 1).
b add: #(5 3 2 0).

b barWidth: 150 height: 20.

b