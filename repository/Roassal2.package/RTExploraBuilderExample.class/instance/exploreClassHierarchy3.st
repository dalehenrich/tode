basic
exploreClassHierarchy3
	"
	self new exploreClassHierarchy3
	"
	| builder |
	builder := RTExploraBuilder new.
	builder shape rectangle
		width: [ :cls | cls numberOfVariables * 10 max: 5 ];
		height: [ :cls | cls numberOfMethods / 2 max: 5];
		color: (Color blue alpha: 0.5);
		if: [ :cls | cls subclasses notEmpty ] borderColor: (Color red alpha: 0.5).
		
	builder
		layout: [ RTClusterLayout new horizontalGap: 80 ];
		onClickExplore: [ :cls | cls subclasses ];
		withPopup;
		dragChildren;
		node: Collection.
	builder view canvas color: Color white.
	^ builder