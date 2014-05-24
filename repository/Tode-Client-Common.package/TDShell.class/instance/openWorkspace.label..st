built-ins
openWorkspace: contents label: workspaceLabel
	| bounds win ws |
	bounds := self topezClient bounds at: #method.
	ws := Workspace new
		toggleStylingActive;
		contents: contents;
		changed: #contents;
		yourself.
	win := ws openLabel: workspaceLabel.
	win
		extent: bounds extent;
		position: bounds origin.
	^ contents