basic
exploreFileSystem
	"
	self new exploreFileSystem
	"
	| builder |
	builder := RTExploraBuilder new.
	builder shape circle size: 10;
		if: [ :x | x isFile ] fillColor: (Color yellow alpha: 0.8);
		if: [ :x | x isDirectory ] fillColor: (Color brown alpha: 0.8).
	builder
		layout: (RTTreeLayout new);
		onLeftClickExplore: [ :elem | (elem isFile) ifTrue: [ #() ] ifFalse: [elem children] ];
		onRightClickExplore: [ :elem | Array with: elem parent ];
		withPopup: [ :file | file basename ];
		dragChildren;
		node: TRPlatform current workingDirectory.
	^ builder