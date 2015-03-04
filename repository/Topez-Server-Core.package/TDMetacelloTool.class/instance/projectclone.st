project
projectclone
  "
  project clone [--https] ( <project-name> | @<project-reference> )
"

  | registration projectName cloneWithSSH |
  self getSubcommandOptsMixedLongShort: {#('https' nil #'none')}.
  options
    at: 'https'
    ifPresent: [ :ingored | cloneWithSSH := false ]
    ifAbsent: [ cloneWithSSH := true ].
  projectName := subArguments at: 1.
  registration := self resolveProjectRegistrationReference: projectName.
  ^ self projectClone: registration cloneWithSSH: cloneWithSSH