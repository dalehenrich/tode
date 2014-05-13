project
projectcommit
  "
  project commit [--git] --message=<message-ref> <project-name>
"

  | messageString projectName registration gitCommit committedVersions |
  self
    getSubcommandOptsMixedLongShort:
      {#('git' nil #'none').
      #('message' nil #'required')}.
  subOptions
    at: 'message'
    ifPresent: [ :arg | messageString := self resolveMessageArg: arg ]
    ifAbsent: [ self error: 'Must supply commit message (--message)' ].
  projectName := subArguments at: 1.
  registration := self projectRegistrationFor: projectName.
  subOptions
    at: 'git'
    ifAbsent: [ gitCommit := false ]
    ifPresent: [ :ignored | gitCommit := true ].
  committedVersions := self
    projectCommit: registration
    gitCommit: gitCommit
    commitMessage: messageString.
  committedVersions isEmpty
    ifTrue: [ ^ 'No dirty packages to commit' ].
  ^ committedVersions