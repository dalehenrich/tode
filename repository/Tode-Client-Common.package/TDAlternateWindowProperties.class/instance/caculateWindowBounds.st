window bounds
caculateWindowBounds
	| layoutExtent dict lw lo lh topHeight shellHeight browserHeight codeWidth shellExtent classCategories classes evaluator superclasses classDef instanceSelectors classSelectors configurations packages implementors app1 app2 app3 app4 context debugger inspector method codeHeight appExtent displayExtent debuggerWidth diff lcw lce |
	displayExtent := Display usableArea extent.
	layoutExtent := displayExtent - (2 @ 2 * margin).
	lo := margin.
	dict := Dictionary new.
	debuggerWidth := codeWidth := layoutExtent x * codeWidthFactor.
	lcw := lw := layoutExtent x // (5.5 + extraLists).
	debuggerWidth := layoutExtent x - (lw + codeWidth).
	(diff := codeWidth - debuggerWidth) > 0
		ifTrue: [ 
			diff := diff / (5.5 + extraLists).
			lcw := lw - diff.
			lw := lw + (diff // (4.5 + extraLists)).
			debuggerWidth := layoutExtent x - (lcw + codeWidth) ].
	shellHeight := layoutExtent y * shellHeightFactor.
	browserHeight := layoutExtent y - shellHeight.
	topHeight := browserHeight * topHeightFactor.
	lh := browserHeight // 2.
	codeHeight := browserHeight - topHeight.
	lce := lcw @ lh.
	shellExtent := codeWidth @ shellHeight.
	appExtent := ((layoutExtent x - codeWidth) // 2) @ shellHeight.
	classCategories := lo extent: lce.
	classes := classCategories bottomLeft extent: lce.
	evaluator := classes bottomLeft extent: shellExtent.
	superclasses := classCategories topRight extent: lw @ topHeight.
	classDef := superclasses topRight extent: (1.5 * lw) @ topHeight.
	instanceSelectors := classDef topRight extent: lw @ topHeight.
	classSelectors := instanceSelectors topRight extent: lw @ topHeight.
	configurations := lo extent: lw @ (lh // 2).
	packages := configurations bottomLeft extent: lw @ (lh // 2).
	method := superclasses bottomLeft extent: codeWidth @ codeHeight.
	implementors := method topRight extent: (2 * lw) @ (codeHeight // 2).
	inspector := evaluator topRight extent: shellExtent.
	debugger := method topRight extent: debuggerWidth @ codeHeight.
	context := debugger bottomLeft extent: debuggerWidth @ shellExtent y.
	app1 := evaluator topRight extent: appExtent.
	app2 := app1 topRight extent: appExtent.
	app3 := evaluator topRight - (0 @ appExtent y) extent: appExtent.
	app4 := app3 topRight extent: appExtent.
	dict
		at: #classCategories put: classCategories;
		at: #classes put: classes;
		at: #evaluator put: evaluator;
		at: #superclasses put: superclasses;
		at: #classDef put: classDef;
		at: #instanceSelectors put: instanceSelectors;
		at: #classSelectors put: classSelectors;
		at: #configurations put: configurations;
		at: #packages put: packages;
		at: #implementors put: implementors;
		at: #inspector put: inspector;
		at: #method put: method;
		at: #context put: context;
		at: #debugger put: debugger;
		at: #app1 put: app1;
		at: #app2 put: app2;
		at: #app3 put: app3;
		at: #app4 put: app4;
		at: #projectList put: app1;
		yourself.
	^ dict