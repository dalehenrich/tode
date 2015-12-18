basic
exploreClassHierarchy
	"
	self new exploreClassHierarchy
	"
	| builder |
	builder := RTExploraBuilder new.
	builder shape circle
		size: 20;
		color: (Color blue alpha: 0.5);
		if: [ :cls | cls subclasses isEmpty ] fillColor: (Color red alpha: 0.5);
		if: [ :cls | cls == ProtoObject ] fillColor: (Color green alpha: 0.5).
	builder
		onRightClickExplore: [ :cls | Array with: cls superclass] edges: #To;
		onLeftClickExplore: [ :cls | cls subclasses ] edges: #From;
		withPopup;
		dragChildren;
		node: String.
	^ builder