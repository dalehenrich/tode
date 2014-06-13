project
projectlock
  "
  project lock ( <project-name> | @<project-reference> )
"

  | registration projectName |
  self getSubcommandOptsMixedLongShort: {}.
  projectName := subArguments at: 1.
  registration := self resolveProjectRegistrationReference: projectName.
  ^ self projectLock: registration