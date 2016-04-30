editor actions
pasteSelection
	self debugger codePresentation announce: (GLMTextEditorRequest for: #paste).
	^true