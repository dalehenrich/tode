window bounds
caculateWindowBounds
	| layoutExtent dict lw lo lh topHeight shellHeight browserHeight codeWidth le shellExtent classCategories classes evaluator superclasses classDef instanceSelectors classSelectors configurations packages implementors app1 app2 app3 app4 context debugger inspector method codeHeight appExtent displayExtent debuggerWidth projectList transcript classicClassDef classicClassButtonBar classicProtocol |
	displayExtent := Display usableArea extent.
	layoutExtent := displayExtent - (2 @ 2 * margin).
	lo := margin.
	dict := Dictionary new.
	debuggerWidth := codeWidth := (layoutExtent x * codeWidthFactor) truncated.
	lw := (layoutExtent x - codeWidth) // (3 + extraLists).
	lw := lw min: layoutExtent x // 6.
	debuggerWidth := layoutExtent x - (lw + codeWidth).
	shellHeight := (layoutExtent y * shellHeightFactor) truncated.
	browserHeight := (layoutExtent y - shellHeight) truncated.
	topHeight := (browserHeight * topHeightFactor) truncated.
	codeHeight := browserHeight - topHeight.
	lh := browserHeight // 2.
	le := lw @ lh.
	shellExtent := codeWidth @ shellHeight.
	appExtent := ((lw + debuggerWidth) // 2) @ lh.
	classCategories := lo extent: le.
	classes := classCategories bottomLeft extent: le.
	evaluator := classes bottomLeft extent: shellExtent.
	superclasses := classCategories topRight extent: lw @ topHeight.
	classDef := superclasses topRight extent: (codeWidth - lw) @ (topHeight * 0.65).
	classicClassDef := superclasses topRight extent: (codeWidth - lw) @ (topHeight * 0.65).
	classicClassButtonBar := superclasses topRight + (0 @ (topHeight * 0.65)) extent: (codeWidth - lw) @ (topHeight * 0.35).
	instanceSelectors := classDef topRight extent: le.
	classicProtocol := instanceSelectors.
	classSelectors := instanceSelectors topRight extent: le.
	configurations := lo extent: lw @ (lh // 2).
	packages := configurations bottomLeft extent: lw @ (lh // 2).
	implementors := instanceSelectors bottomLeft extent: (2 * lw) @ lh.
	inspector := evaluator topRight extent: shellExtent.
	method := superclasses bottomLeft extent: codeWidth @ codeHeight.
	context := implementors bottomLeft extent: debuggerWidth @ shellExtent y.
	debugger := instanceSelectors bottomLeft extent: debuggerWidth @ lh.
	app1 := evaluator topRight extent: appExtent.
	app2 := app1 topRight extent: appExtent.
	app3 := evaluator topRight - (0 @ lh) extent: appExtent.
	app4 := app3 topRight extent: appExtent.
	projectList := app1.
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
		at: #workspace put: method;
		at: #transcript put: transcript;
		yourself.
	^ dict