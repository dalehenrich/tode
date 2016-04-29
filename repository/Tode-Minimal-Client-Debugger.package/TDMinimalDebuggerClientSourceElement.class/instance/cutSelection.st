editor actions
cutSelection
	self debugger codePresentation announce: (GLMTextEditorRequest for: #cut).
	^true