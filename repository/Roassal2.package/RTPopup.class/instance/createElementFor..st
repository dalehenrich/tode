hooks
createElementFor: element
	| g |
	g := RTGroup new.
	groupBlock value: g value: element.
	^ g