evaluator engine
scriptDirectoryFromBaselineOfTode
	| wc fileTreeRepo repoDir fileTreeRepoPath fileTreeRepoDir |
	wc := MCWorkingCopy registry detect: [ :mgr | mgr packageName = 'BaselineOfTode' ].
	fileTreeRepo := (wc repositoryGroup repositories reject: [ :repo | MCCacheRepository default = repo ])
		detect: [ :repo | repo isKindOf: MCFileTreeRepository ].
	fileTreeRepoPath := self filetreeUtilityClass directoryPathString: fileTreeRepo directory.
	fileTreeRepoDir := self filetreeUtilityClass directoryFromPath: fileTreeRepoPath.
	repoDir := self filetreeUtilityClass parentDirectoryOf: fileTreeRepoDir.
	^ self filetreeUtilityClass directoryFromPath: 'installTode' relativeTo: repoDir