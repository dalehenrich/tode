project
projectcompare
  "
  project compare [--commit=<commitish>] <project-name>
"

  | projectName registration source destination gitTool gitRepoDirectory diffs |
  self getSubcommandOptsMixedLongShort: {#('commit' nil #'required')}.
  projectName := subArguments
    at: 1
    ifAbsent: [ 
      self
        error:
          'Missing required argument <project-name>. See `man project compare` for details.' ].
  registration := self projectRegistrationFor: projectName.
  destination := registration currentVersionString.
  subOptions at: 'commit' ifPresent: [ :arg | destination := arg ].
  source := registration versionString.
  source = destination
    ifTrue: [ ^ 'Nothing to compare ... commits are the same' ].
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