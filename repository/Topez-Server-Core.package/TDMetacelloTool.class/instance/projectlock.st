project
projectlock
  "
  project lock ( <project-name> | @<project-reference> )
"

  | registration projectName |
  self getSubcommandOptsMixedLongShort: {}.
  projectName := subArguments
    at: 1
    ifAbsent: [ 
      self
        error:
          'Missing required argument ( <project-name> | @<project-reference> ). See `man project lock` for more details' ].
  registration := self resolveProjectRegistrationReference: projectName.
  ^ self projectLock: registration