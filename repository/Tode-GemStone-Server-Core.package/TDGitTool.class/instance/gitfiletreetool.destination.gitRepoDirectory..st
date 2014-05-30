as yet unclassified
gitfiletreetool: source destination: destination gitRepoDirectory: gitRepoDirectory
  | diffs differ diffTool |
  diffs := self
    gitdifftool: source
    destination: destination
    gitRepoDirectory: gitRepoDirectory
    diffClass: TDFileTreeDiff.
  diffs isEmpty
    ifTrue: [ ^ 'No diffs' ].
  (TDFileTreeDiffBrowser new
    operations: diffs;
    source: source;
    destination: destination;
    gitRepoDirectory: gitRepoDirectory;
    topez: topez;
    windowLabel:
        'Diff ' , source printString , ' (-) --> ' , destination printString , ' (+)';
    yourself) open.
  ^ diffs