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
    ifAbsent: [ logLimit := self defaultCommitLogLimit ].
  projectName := subArguments
    at: 1
    ifAbsent: [ 
      self
        error:
          'Missing required argument <project-name>. See `man project log` for more details' ].
  registration := self projectRegistrationFor: projectName.
  ^ self projectCommitLog: registration logLimit: logLimit