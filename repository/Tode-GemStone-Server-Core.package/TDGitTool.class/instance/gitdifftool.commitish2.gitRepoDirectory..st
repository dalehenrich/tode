as yet unclassified
gitdifftool: commitish1 commitish2: commitish2 gitRepoDirectory: gitRepoDirectory
  | diffs differ diffTool |
  diffs := self
    gitdifftool: commitish1
    commitish2: commitish2
    gitRepoDirectory: gitRepoDirectory
    diffClass: TDGitDiff.
  differ := TDGitDiffer new diffs: diffs.
  diffTool := topez toolInstanceFor: 'mg'.
  diffTool gitdiff: differ gitTool: self