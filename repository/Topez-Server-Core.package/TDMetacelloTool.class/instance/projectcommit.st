project
projectcommit
  "
  project commit [--git] --message=<message-ref> <project-name>
"

  | messageString projectName shellTool registration modified committedVersions |
  shellTool := self topez toolInstanceFor: 'find'.
  self
    getSubcommandOptsMixedLongShort:
      {#('git' nil #'none').
      #('message' nil #'required')}.
  subOptions
    at: 'message'
    ifPresent: [ :arg | messageString := self resolveMessageArg: arg ]
    ifAbsent: [ self error: 'Must supply commit message (--message)' ].
  projectName := subArguments at: 1.
  registration := shellTool findProjectRegistrationExact: projectName.
  modified := registration workingCopies select: [ :wc | wc modified ].
  committedVersions := self
    commitWorkingCopies: modified
    repos: registration repositories
    commitMessage: messageString.
  committedVersions isEmpty
    ifTrue: [ ^ 'No dirty packages to commit' ].
  subOptions
    at: 'git'
    ifAbsent: [ ^ committedVersions ]
    ifPresent: [ :ignored | self gitCommit: registration commitMessage: messageString ].
  ^ committedVersions