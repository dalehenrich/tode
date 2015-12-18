basic
exploreClassHierarchy2
	"
	self new exploreClassHierarchy2
	"
	| builder |
	builder := RTExploraBuilder new.
	builder shape circle
		size: [ :cls | cls numberOfMethods / 3 + 10];
		color: (Color blue alpha: 0.5);
		if: [ :cls | cls subclasses isEmpty ] fillColor: (Color red alpha: 0.5);
		if: [ :cls | '*Array*' match: cls name] fillColor: (Color green alpha: 0.5).
	builder
		layout: [RTClusterLayout new horizontalGap: 80];
		onClickExplore: [ :cls | cls subclasses ];
		withPopup;
		dragChildren;
		node: Collection.
	^ builder