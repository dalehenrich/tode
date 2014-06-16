deployment
cleanForDeploy
	"self cleanForDeploy"

	| utils block |
	utils := MCFileTreeFileUtils current.
	block := [ :dir | 
	(dir exists)
		ifTrue: [ 
			utils deleteAll: dir ]  ].
	(MCCacheRepository respondsTo: #checkCacheDirectory)
		ifTrue: [ 
			"Pharo 1.4"
			MCCacheRepository checkCacheDirectory ]
		ifFalse: [ 
			"Pharo2.0"
			MCCacheRepository resetIfInvalid ].
	block value: MCCacheRepository cacheDirectory.
	block value: MCGitHubRepository cacheDirectory.
	MCRepositoryGroup default repositoriesDo: [ :rep | rep flushCache ].
	MCDirectoryRepository defaultDirectoryName: nil.
	MCGitHubRepository flushDownloadCache.
	self resetWorldMenu.
	WebEditionRoot := nil