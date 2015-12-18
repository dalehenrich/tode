showing palette
show
	| view |
	view := RTView new.
	self viewOn: view.
	view openInWindowSized: 600@700 titled: 'Color Palette: ',self class paletteName.
	^ view