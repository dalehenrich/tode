as yet unclassified
gitdifftoolCached: gitRepoDirectory
  | diffs differ diffTool |
  diffs := self
    gitdifftool: ''
    commitish2: ''
    cached: true
    filePath: ''
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