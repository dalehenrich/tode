project
projectclone
  "
  project clone ( <project-name> | @<project-reference> )
"

  | registration projectName |
  self getSubcommandOptsMixedLongShort: {}.
  projectName := subArguments at: 1.
  registration := self resolveProjectRegistrationReference: projectName.
  ^ self projectClone: registration