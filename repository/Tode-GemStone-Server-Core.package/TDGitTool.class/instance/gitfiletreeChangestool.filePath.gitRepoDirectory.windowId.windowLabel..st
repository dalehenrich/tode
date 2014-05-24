as yet unclassified
gitfiletreeChangestool: commitish1 filePath: filePath gitRepoDirectory: gitRepoDirectory windowId: aWindowId windowLabel: windowLabel
  | diffs differ diffTool |
  diffs := self
    gitdifftool: commitish1 , '^'
    commitish2: commitish1
    filePath: filePath
    gitRepoDirectory: gitRepoDirectory
    diffClass: TDFileTreeDiff.
  diffs isEmpty
    ifTrue: [ ^ 'No diffs' ].
  ^ (TDFileTreeDiffBrowser new
    operations: diffs;
    commitish1: commitish1;
    commitish2: commitish1;
    gitRepoDirectory: gitRepoDirectory;
    topez: topez;
    windowId: aWindowId;
    windowLabel: windowLabel;
    yourself) open