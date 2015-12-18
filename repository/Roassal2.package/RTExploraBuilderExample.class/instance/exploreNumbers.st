basic
exploreNumbers
	"
	self new exploreNumbers
	"
	| builder |
	builder := RTExploraBuilder new.
	builder shape circle size: 30;
		if: [:n | (n < 100)] fillColor: (Color green alpha: 0.5);
		if: [:n | (n > 100) and: (n < 500)] fillColor: (Color yellow alpha: 0.5);
		if: [:n | (n >= 500)] fillColor: (Color red alpha: 0.5);
		withText.
	builder
		layout: [RTClusterLayout new verticalGap: 40];
		withPopup;
		dragChildren;
		node: 1;
		onClickExplore: [ :aNumber | aNumber*5 to: (aNumber*5 + 5) ].
	^ builder