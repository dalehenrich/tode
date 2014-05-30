as yet unclassified
gitfiletreeChangestool: commitish filePath: filePath gitRepoDirectory: gitRepoDirectory windowId: aWindowId windowLabel: windowLabel
  | diffs differ diffTool |
  diffs := self
    gitdifftool: commitish , '^'
    destination: commitish
    cached: false
    filePath: filePath
    gitRepoDirectory: gitRepoDirectory
    diffClass: TDFileTreeDiff.
  diffs isEmpty
    ifTrue: [ ^ 'No diffs' ].
  ^ (TDFileTreeDiffBrowser new
    operations: diffs;
    source: commitish;
    destination: commitish;
    gitRepoDirectory: gitRepoDirectory;
    topez: topez;
    windowId: aWindowId;
    windowLabel: windowLabel;
    yourself) open