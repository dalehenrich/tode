deployment
cleanForDeploy
	"self cleanForDeploy"

	| utils block |
	utils := MCFileTreeFileDirectoryUtils current.
	block := [ :dir | 
	(utils directoryExists: dir)
		ifTrue: [ utils deleteAll: dir ] ].
	block value: MCCacheRepository cacheDirectory.
	MCCacheRepository checkCacheDirectory.
	block value: MCGitHubRepository cacheDirectory.
	MCRepositoryGroup default repositoriesDo: [ :rep | rep flushCache ].
	MCDirectoryRepository defaultDirectoryName: nil.
	MCGitHubRepository flushDownloadCache.
	self resetWorldMenu.
	WebEditionRoot := nil.
	