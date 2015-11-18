project
projectCompareFor: registration withSourceCommit: source
  | destination gitTool gitRepoDirectory diffs |
  destination := registration versionString.	"loaded commitish"
  source = destination
    ifTrue: [ ^ self error: 'Nothing to compare ... commits are the same' ].
  gitRepoDirectory := self gitRepoDirForRegistration: registration.
  gitTool := self topez toolInstanceFor: 'git'.
  diffs := gitTool
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
    topez: topez;
    windowLabel:
        'Compare ' , source printString , ' (-) --> ' , destination printString , ' (+)';
    yourself) open.
  ^ diffs