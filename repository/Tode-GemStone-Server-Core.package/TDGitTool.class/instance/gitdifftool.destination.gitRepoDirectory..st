as yet unclassified
gitdifftool: source destination: destination gitRepoDirectory: gitRepoDirectory
  | diffs differ diffTool |
  diffs := self
    gitdifftool: source
    destination: destination
    gitRepoDirectory: gitRepoDirectory
    diffClass: TDGitDiff.
  diffs isEmpty
    ifTrue: [ ^ 'No diffs' ].
  (TDGitDiffBrowser new
    operations: diffs;
    source: source;
    destination: destination;
    gitRepoDirectory: gitRepoDirectory;
    topez: topez;
    windowLabel:
        'Diff ' , source printString , ' (-) --> ' , destination printString , ' (+)';
    yourself) open.
  ^ diffs