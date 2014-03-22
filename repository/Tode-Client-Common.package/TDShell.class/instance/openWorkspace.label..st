built-ins
openWorkspace: contents label: workspaceLabel
	Workspace new
		toggleStylingActive;
		openLabel: workspaceLabel;
		contents: contents;
		changed: #contents;
		yourself.
	^ contents