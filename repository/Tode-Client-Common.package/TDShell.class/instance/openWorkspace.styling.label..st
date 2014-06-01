built-ins
openWorkspace: contents styling: styling label: workspaceLabel
	| bounds win ws |
	bounds := self topezClient bounds at: #method.
	ws := Workspace new.
	styling
		ifFalse: [ ws toggleStylingActive ].
	ws
		contents: contents;
		changed: #contents.
	win := ws openLabel: workspaceLabel.
	win
		extent: bounds extent;
		position: bounds origin.
	^ contents