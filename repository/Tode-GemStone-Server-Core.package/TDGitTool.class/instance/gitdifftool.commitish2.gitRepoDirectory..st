as yet unclassified
gitdifftool: commitish1 commitish2: commitish2 gitRepoDirectory: gitRepoDirectory
  | diffs differ diffTool |
  diffs := self
    gitdifftool: commitish1
    commitish2: commitish2
    gitRepoDirectory: gitRepoDirectory
    diffClass: TDGitDiff.
  diffs isEmpty
    ifTrue: [ ^ 'No diffs' ].
  (TDGitDiffBrowser new
    operations: diffs;
    commitish1: commitish1;
    commitish2: commitish2;
    gitRepoDirectory: gitRepoDirectory;
    topez: topez;
    windowLabel:
        'Diff ' , commitish1 printString , ' to ' , commitish2 printString;
    yourself) open.
  ^ diffs