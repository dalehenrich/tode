home-private
scriptDirectoryFromBaselineOfTode
	| repoDir |
	repoDir := self self rootDirectoryFromBaselineOfTode.
	^ self filetreeUtilityClass directoryFromPath: 'installTode' relativeTo: repoDir