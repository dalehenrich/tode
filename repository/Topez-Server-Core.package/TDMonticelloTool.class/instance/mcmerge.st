as yet unclassified
mcmerge
  "
   mc merge <package-name> <version-name> <repository-spec>
      merge <package-name> <version-name> @<repository-path>
	"

  | packageName wc package version imageSnapshot versionSnapshot commonAncestorSnapshot merger commonAncestorInfo repoGroup versionName repoSpec repo mergeTool |
  packageName := tokens at: 2.
  wc := self resolveWorkingCopyReference: packageName.
  package := wc package.
  imageSnapshot := package snapshot.
  versionName := tokens at: 3.
  repoSpec := tokens at: 4.
  repo := self resolveRepositoryReference: repoSpec.
  version := self versionFor: versionName in: repoSpec.
  versionSnapshot := version snapshot.
  commonAncestorInfo := version info commonAncestorWith: wc ancestry.
  repoGroup := MCRepositoryGroup new
    addRepository: repo;
    yourself.
  commonAncestorSnapshot := (repoGroup versionWithInfo: commonAncestorInfo)
    snapshot.
  merger := MCThreeWayMerger
    base: imageSnapshot
    target: versionSnapshot
    ancestor: commonAncestorSnapshot.
  mergeTool := topez toolInstanceFor: 'mg'.
  mergeTool
    mgmerge: merger
    mergerCompletionBlock: [ 
      | imagePatch |
      imagePatch := version workingCopy package snapshot
        patchRelativeToBase: commonAncestorSnapshot.
      imagePatch isEmpty
        ifTrue: [ version workingCopy loaded: version ]
        ifFalse: [ version workingCopy merged: version ] ]
    mergerAbortBlock: [  ]