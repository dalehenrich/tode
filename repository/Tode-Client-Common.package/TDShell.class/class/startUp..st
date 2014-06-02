initialization
startUp: resuming
	resuming
		ifTrue: [ 
			self resetWorldMenu.
			MCGitHubRepository resetCacheDirectoryIfInvalid ]