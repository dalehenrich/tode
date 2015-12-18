sources
exampleUseOfMetrics

| metrics classes view mb xAxis yAxis refresh elements |
refresh := nil.
metrics := Array with: 
	(Array with: 'LOC' with: #numberOfLinesOfCode) with: 
	(Array with: 'NOM' with: #numberOfMethods ) with:
	(Array with: 'NOA' with: #numberOfVariables).

classes := RTObject withAllSubclasses.

view := RTView new.
view @ RTDraggableView.
xAxis := metrics first second.
yAxis := metrics second second.

"Preparing the menu according to the provided metrics"
mb := RTMenuBuilder new.
mb view: view.

metrics do: [ :tupple |
	mb menu: 'X-axis' submenu: tupple first background: Color green callback: [ xAxis := tupple second. refresh value].
	mb menu: 'Y-axis' submenu: tupple first background: Color green callback: [ yAxis := tupple second. refresh value ].
].

elements := (RTEllipse new color: (Color red alpha: 0.3)) elementsOn: classes.

elements @ RTPopup.

view addAll: elements.

refresh := [
	RTMetricNormalizer new
		elements: elements;
		fastSmoothTranslation;
		normalizePosition: [:cls | (xAxis rtValue: cls) @ (yAxis rtValue: cls) negated ] min: 0@0 max: 200 @ 200.
	view signalUpdate.
].
refresh value. 

view canvas addShape: (TRLineShape new from: 0 @ 200 to: 200 @ 200).

view canvas addShape: (TRLineShape new from: 0 @ 0 to: 0 @ 200).

^ view
