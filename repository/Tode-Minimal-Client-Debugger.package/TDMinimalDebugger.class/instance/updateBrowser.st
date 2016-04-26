updating
updateBrowser
	| browserPane session |
	session := self session.
	browserPane := self browser pane.
	(browserPane port: #entity) silentValue: nil.
	(browserPane port: #entity) value: session.
	browserPane update.
	((self browser paneNamed: #stack) port: #selection)
		value: (self session stack at: self session selectedFrameIndex)