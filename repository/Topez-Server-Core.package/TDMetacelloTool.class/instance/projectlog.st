project
projectlog
  "
  project log [--limit=<max-commit-log-entries>] <project-name>
"

  | logLimit registration projectName shellTool |
  self getSubcommandOptsMixedLongShort: {#('limit' nil #'none')}.
  subOptions
    at: 'limit'
    ifPresent: [ :limit | logLimit := limit asNumber ]
    ifAbsent: [ logLimit := 100 ].
  projectName := subArguments at: 1.
  shellTool := self topez toolInstanceFor: 'find'.
  registration := shellTool findProjectRegistrationExact: projectName.
  ^ self projectCommitLog: registration logLimit: logLimit