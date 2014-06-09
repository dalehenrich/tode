initialization
startUp: resuming
	resuming
		ifTrue: [ 
			self resetWorldMenu.
			[MCGitHubRepository resetCacheDirectoryIfInvalid] on: Error do: [:ignored | ] ]