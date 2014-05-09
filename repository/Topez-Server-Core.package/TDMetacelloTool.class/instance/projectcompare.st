project
projectcompare
  "
  project compare [--commit=<commitish>] <project-name>
"

  | shellTool projectName registration commitish1 commitish2 gitTool gitRepoDirectory |
  self getSubcommandOptsMixedLongShort: {}.
  shellTool := self topez toolInstanceFor: 'find'.
  projectName := subArguments at: 1.
  registration := shellTool findProjectRegistrationExact: projectName.
  commitish2 := registration currentVersionString.
  subOptions at: 'commit' ifPresent: [ :arg | commitish2 := arg ].
  commitish1 := registration versionString.
  commitish1 = commitish2
    ifTrue: [ ^ 'Nothing to compare ... commits are the same' ].
  gitRepoDirectory := self gitRepoDirForRegistration: registration.
  gitTool := self topez toolInstanceFor: 'git'.
  ^ gitTool
    gitdifftool: commitish1
    commitish2: commitish2
    gitRepoDirectory: gitRepoDirectory