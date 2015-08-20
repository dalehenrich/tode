window bounds
caculateWindowBounds
	| layoutExtent dict lw lo lh topHeight shellHeight browserHeight codeWidth shellExtent classCategories classes evaluator superclasses classDef instanceSelectors classSelectors configurations packages implementors app1 app2 app3 app4 context debugger inspector method codeHeight appExtent displayExtent debuggerWidth diff lce projectList workspace transcript classicClassDef classicClassButtonBar classicProtocol |
	displayExtent := Display usableArea extent.
	layoutExtent := displayExtent - (2 @ 2 * margin).
	lo := margin.
	dict := Dictionary new.
	debuggerWidth := codeWidth := layoutExtent x * codeWidthFactor.
	lw := layoutExtent x // (5.5 + extraLists).
	debuggerWidth := 2.75 * lw.
	(diff := codeWidth - debuggerWidth) > 0
		ifTrue: [ 
			diff := diff / (5.5 + extraLists).
			lw := lw + (diff // (4.5 + extraLists)).
			false
				ifTrue: [ debuggerWidth := layoutExtent x - (lw + codeWidth) ] ].
	shellHeight := layoutExtent y * shellHeightFactor.
	browserHeight := layoutExtent y - shellHeight.
	topHeight := browserHeight * topHeightFactor.
	lh := browserHeight // 2.
	codeHeight := browserHeight - topHeight.
	lce := lw @ lh.
	shellExtent := codeWidth @ shellHeight.
	evaluator := margin x @ (lh * 2) extent: (codeWidth * 0.80) @ shellHeight.
	superclasses := lo extent: lw @ topHeight.
	classDef := superclasses topRight extent: (1.35 * lw) @ topHeight.
	classicClassDef := superclasses topRight extent: (1.35 * lw) @ (topHeight * 0.65).
	classicClassButtonBar := superclasses topRight + (0 @ (topHeight * 0.65)) extent: (1.35 * lw) @ (topHeight * 0.35).
	instanceSelectors := classDef topRight extent: lw @ (lh * 2).
	classicProtocol := classDef topRight extent: lw @ topHeight.
	classSelectors := instanceSelectors topRight extent: lw @ (lh * 2).
	method := superclasses bottomLeft extent: (instanceSelectors topRight x - margin x) @ codeHeight.
	implementors := classDef bottomRight extent: debuggerWidth @ (codeHeight // 2).
	inspector := evaluator topRight extent: shellExtent.
	debugger := instanceSelectors bottomRight x @ implementors bottomLeft y extent: debuggerWidth @ (codeHeight // 2).
	context := debugger bottomLeft extent: debuggerWidth @ shellExtent y.
	classCategories := classSelectors topRight extent: lw @ topHeight.
	classes := classCategories topRight extent: lw @ topHeight.
	configurations := classSelectors topRight extent: lw @ topHeight.
	packages := configurations bottomLeft extent: lw @ topHeight.
	appExtent := ((layoutExtent x - method bottomRight x) // 2) @ shellHeight.
	projectList := evaluator topRight corner: classSelectors bottomRight + (0 @ shellHeight).
	workspace := classCategories bottomLeft corner: classes bottomRight + (0 @ topHeight).
	app1 := method bottomRight - (0 @ appExtent y) extent: appExtent.
	app2 := app1 topRight extent: appExtent.
	app3 := method bottomRight extent: appExtent.
	app4 := app3 topRight extent: appExtent.
	transcript := projectList topRight + (0 @ (projectList height // 2))
		extent: (layoutExtent x - projectList topRight x) @ (projectList height // 2).
	dict
		at: #classCategories put: classCategories;
		at: #classes put: classes;
		at: #evaluator put: evaluator;
		at: #superclasses put: superclasses;
		at: #classDef put: classDef;
		at: #classicClassDef put: classicClassDef;
		at: #classicClassButtonBar put: classicClassButtonBar;
		at: #classicProtocol put: classicProtocol;
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
		at: #projectList put: projectList;
		at: #workspace put: workspace;
		at: #transcript put: transcript;
		yourself.
	^ dict