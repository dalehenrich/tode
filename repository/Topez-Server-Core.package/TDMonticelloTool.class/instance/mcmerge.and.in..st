as yet unclassified
mcmerge: wc and: version in: repo
  | packageName package imageSnapshot versionSnapshot commonAncestorSnapshot merger commonAncestorInfo repoGroup repoSpec mergeTool |
  package := wc package.
  packageName := wc packageName.
  imageSnapshot := package snapshot.
  (wc ancestry hasAncestor: version info)
    ifTrue: [ 
      ^ self
        notify:
          'No Changes: ' , version info name printString , ' already in '
            , packageName printString , ' ancestry' ].
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
  merger := TDMerger new merger: merger.
  (TDMCMergeDiffBrowser new
    merger: merger
      mergerCompletionBlock: [ 
          | imagePatch |
          imagePatch := version workingCopy package snapshot
            patchRelativeToBase: commonAncestorSnapshot.
          imagePatch isEmpty
            ifTrue: [ version workingCopy loaded: version ]
            ifFalse: [ version workingCopy merged: version ] ]
      mergerAbortBlock: [  ];
    topez: topez;
    windowLabel:
        'Merge ' , version info name printString , ' (-) --> ' , packageName printString
            , ' (+)';
    yourself) open