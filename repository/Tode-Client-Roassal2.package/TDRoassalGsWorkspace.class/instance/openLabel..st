initialization
openLabel: labelString
	| window pane windowId windowStatus |
	window := (TZSystemWindow labelled: labelString) model: self.
	pane := self buildTextMorph.
	window addMorph: pane frame: (0 @ 0 corner: 1 @ 1).
	window openInWorld.
	windowStatus := self tdShell windowStatus.
	windowId := windowStatus windowIdNamed: #workspace , self tdShell shellId asString.
	windowStatus
		windowAt: windowId put: window;
		registerShellWindow: window.
	self tdShell shellWindow: window.
	^ window