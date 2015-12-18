sources
exampleClassAnalysis2

| classesToAnalyze c b b2 b3 b4 es ds |
classesToAnalyze := RTShape withAllSubclasses.

c := RTComposer new.
c gap: 35.
"-------"
b := RTMondrian new.
b view: c view.
b shape circle
	if: [ :cls | cls numberOfMethods > 10 ] fillColor: Color red.

b nodes: classesToAnalyze.
b edges connectFrom: #superclass.
b normalizer normalizeSize: #numberOfLinesOfCode min: 5 max: 15 using: #sqrt.
b layout tree.
b build.
c propagateHighlight.
c group: #hierarchy.

"-------"
b2 := RTGrapher new.
b2 view: c view.
b2 extent: 200 @ 150.

ds := RTStackedDataSet new.
ds interaction popup.
ds points: classesToAnalyze.
ds y: [ :cls | cls rtmethods size ].
ds barShape rectangle color: Color lightBlue.
b2 add: ds.
"b2 axisX; axisYWithNumberOfTicks: 4.
"
b2 build.

c propagateHighlight.
c group: #stat.
"-------"

b3 := RTPieBuilder new.
b3 view: c view.
b3 interaction popup.
b3 objects: classesToAnalyze.
es := b3 slice: #numberOfLinesOfCode.
b3 normalizer 
		elements: es;
		distinctColor.
b3 build.
c propagateHighlight.
c group: #pie.

"-------"
b4 := RTGrapher new.
b4 view: c view.
b4 extent: 290 @ 200.

ds := RTDataSet new.
ds interaction popup.
ds dotShape ellipse size: 15; color: (Color red alpha: 0.3).
ds points: classesToAnalyze.
ds x: #numberOfMethods; y: #numberOfVariables "min: 0 max: 10".
ds dotSize: #numberOfLinesOfCode min: 4 max: 20 using: #sqrt.
ds highlightIf: [ :cls | (cls numberOfLinesOfCode > 2000) or: [ cls numberOfVariables > 10 ] ] using: #name.
b4 add: ds.

"b4 axisXWithNumberOfTicks: 3.
b4 axisYWithNumberOfTicks: 4.
"
b4 build.
c propagateHighlight.
c group: #plot.

"-------"
c move: #hierarchy onTheLeftOf: #pie.
c move: #stat below: #hierarchy.
c move: #plot below: #stat.

c nameGroup: #hierarchy as: 'class hierarchy'.
c nameGroup: #stat as: '#methods'.
"c nameGroup: #pie as: '#LOC'."
c nameGroup: #plot as: 'NOM x NOA x LOC'.
^ c view