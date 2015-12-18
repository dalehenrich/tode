RTComposerExample new installTitle: 'ClassAnalysis' 
		code:
		'
| classesToAnalyze c b b2 b3 b4 es |
classesToAnalyze := TRShape withAllSubclasses.

c := RTComposer new.
c gap: 35.
"-------"
b := RTGraphBuilder new.
b view: c view.
b nodes 
	if: [ :cls | cls numberOfMethods > 10 ];
	color: Color red.
b edges connectFrom: #superclass; useInLayout.
b nodes color: Color gray.
b global normalizeSize: #numberOfLinesOfCode min: 5 max: 15 using: #sqrt.
b layout tree.
b addAll: classesToAnalyze.
b build.
c propagateHighlight.
c group: #hierarchy.

"-------"
b2 := RTCharterBuilder new.
b2 view: c view.
b2 extent: 200 @ 150.
b2 interaction popup.
b2 shape rectangle size: 0.
b2 points: classesToAnalyze.

b2 allY: [ :cls | cls methods size ].
b2 shape rectangle color: Color lightBlue.
b2 stackX.
b2 histogramBarWidth: 5.

b2 axisX; axisYWithNumberOfTicks: 4.
b2 build.

c propagateHighlight.
c group: #stat.
"-------"

b3 := RTPieBuilder new.
b3 view: c view.
b3 interaction popup.
b3 objects: classesToAnalyze.
es := b3 slice: #numberOfLinesOfCode.
b3 globalRule 
		elements: es;
		distinctColor.
b3 build.
c propagateHighlight.
c group: #pie.

"-------"
b4 := RTCharterBuilder new.
b4 view: c view.
b4 extent: 290 @ 200.
b4 interaction popup.
b4 shape ellipse size: 15; color: (Color red alpha: 0.3).
b4 points: classesToAnalyze.
b4 x: #numberOfMethods; y: #numberOfVariables min: 0 max: 10.
b4 size: #numberOfLinesOfCode min: 4 max: 20 using: #sqrt.
	
b4 axisXWithNumberOfTicks: 3.
b4 axisYWithNumberOfTicks: 4.
b4 highlightIf: [ :cls | (cls numberOfLinesOfCode > 2000) or: [ cls numberOfVariables > 10 ] ] using: #name.
c propagateHighlight.
c group: #plot.

"-------"
c move: #hierarchy onTheLeftOf: #pie.
c move: #stat below: #hierarchy.
c move: #plot below: #stat.

c nameGroup: #hierarchy as: ''class hierarchy''.
c nameGroup: #stat as: ''#methods''.
"c nameGroup: #pie as: ''#LOC''."
c nameGroup: #plot as: ''NOM x NOA x LOC''.
c open.
c view canvas'
	