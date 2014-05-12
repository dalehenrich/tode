as yet unclassified
gitfiletreeChangestool: commitish1 gitRepoDirectory: gitRepoDirectory
  | diffs differ diffTool |
  diffs := self
    gitdifftool: commitish1 , '^'
    commitish2: commitish1
    gitRepoDirectory: gitRepoDirectory
    diffClass: TDFileTreeDiff.
  diffs isEmpty
    ifTrue: [ ^ 'No diffs' ].
  (TDFileTreeDiffBrowser new
    operations: diffs;
    commitish1: commitish1;
    commitish2: commitish1;
    gitRepoDirectory: gitRepoDirectory;
    topez: topez;
    windowLabel: 'Changes for commit ' , commitish1 printString;
    yourself) open.
  ^ diffs