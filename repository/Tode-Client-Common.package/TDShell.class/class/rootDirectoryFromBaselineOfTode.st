home-private
rootDirectoryFromBaselineOfTode
	| wc fileTreeRepo fileTreeRepoPath fileTreeRepoDir |
	wc := MCWorkingCopy registry detect: [ :mgr | mgr packageName = 'BaselineOfTode' ].
	fileTreeRepo := (wc repositoryGroup repositories reject: [ :repo | MCCacheRepository default = repo ])
		detect: [ :repo | repo isKindOf: MCFileTreeRepository ].
	fileTreeRepoPath := self filetreeUtilityClass directoryPathString: fileTreeRepo directory.
	fileTreeRepoDir := self filetreeUtilityClass directoryFromPath: fileTreeRepoPath.
	^ self filetreeUtilityClass parentDirectoryOf: fileTreeRepoDir