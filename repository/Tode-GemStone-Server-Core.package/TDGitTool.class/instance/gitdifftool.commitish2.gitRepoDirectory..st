as yet unclassified
gitdifftool: commitish1 commitish2: commitish2 gitRepoDirectory: gitRepoDirectory
  | diffs differ diffTool |
  diffs := self
    gitdifftool: commitish1
    commitish2: commitish2
    gitRepoDirectory: gitRepoDirectory
    diffClass: TDGitDiff.
  (TDGitDiffBrowser new
    operations: diffs;
    topez: topez;
    windowLabel:
        'Diff ' , commitish1 printString , ' to ' , commitish2 printString;
    yourself) open