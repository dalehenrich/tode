as yet unclassified
spawnShellFor: aClientElement
	| spawn clientTopez |
	spawn := self spawnWindow.
	self topezServer setCurrentNodeFromClientElement: aClientElement