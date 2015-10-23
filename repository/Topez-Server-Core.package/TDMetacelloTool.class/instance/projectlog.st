project
projectlog
  "
  project log [--limit=<max-commit-log-entries>] <project-name>
"

  | logLimit registration projectName |
  self getSubcommandOptsMixedLongShort: {#('limit' nil #'required')}.
  subOptions
    at: 'limit'
    ifPresent: [ :limit | logLimit := limit asNumber ]
    ifAbsent: [ logLimit := 100 ].
  projectName := subArguments at: 1.
  registration := self projectRegistrationFor: projectName.
  ^ self projectCommitLog: registration logLimit: logLimit