server blocks
onServer: sessionName do: aBlock
	| shell |
	shell := (Smalltalk at: #TDShell) forSessionNamed: sessionName.
	[ shell onServerDo: aBlock ]
		ensure: [ shell windowIsClosing ]