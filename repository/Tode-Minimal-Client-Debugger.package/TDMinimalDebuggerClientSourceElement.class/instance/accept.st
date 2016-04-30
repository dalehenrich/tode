editor actions
accept
	| source |
	source := self debugger sourceCode asString.
	self clientElement source: source.
	self debugger codePresentation announce: (GLMTextEditorRequest for: #accept).
	self debugger updateBrowser.
	self session stackClientElement stackItemSelected: 1.
	^ true