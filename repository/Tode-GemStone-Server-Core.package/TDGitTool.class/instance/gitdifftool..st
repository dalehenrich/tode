as yet unclassified
gitdifftool: gitRepoDirectory
  | diffs differ diffTool |
  diffs := self
    gitdifftool: ''
    commitish2: ''
    gitRepoDirectory: gitRepoDirectory
    diffClass: TDGitDiff.
  diffs isEmpty
    ifTrue: [ ^ diffs ].
  (TDGitDiffBrowser new
    operations: diffs;
    gitRepoDirectory: gitRepoDirectory;
    topez: topez;
    windowLabel: 'Diff for ' , gitRepoDirectory fullName;
    yourself) open.
  ^ diffs