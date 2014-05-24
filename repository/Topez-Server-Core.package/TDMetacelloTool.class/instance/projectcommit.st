project
projectcommit
  "
  project commit [--git] --message=<message-ref> <project-name>
"

  | messageString projectName registration gitCommit committedVersions configCommit |
  self
    getSubcommandOptsMixedLongShort:
      {#('config' nil #'none').
      #('git' nil #'none').
      #('message' nil #'required')}.
  subOptions
    at: 'message'
    ifPresent: [ :arg | messageString := self resolveMessageArg: arg ]
    ifAbsent: [ self error: 'Must supply commit message (--message)' ].
  projectName := subArguments at: 1.
  registration := self projectRegistrationFor: projectName.
  subOptions
    at: 'config'
    ifAbsent: [ configCommit := false ]
    ifPresent: [ :ignored | configCommit := true ].
  subOptions
    at: 'git'
    ifAbsent: [ gitCommit := false ]
    ifPresent: [ :ignored | gitCommit := true ].
  committedVersions := self
    projectCommit: registration
    configCommit: configCommit
    gitCommit: gitCommit
    commitMessage: messageString.
  committedVersions isEmpty
    ifTrue: [ ^ 'No dirty packages to commit' ].
  ^ committedVersions