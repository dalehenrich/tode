project
projectinstall
  "
  project install <project-name>
"

  | projectName registration |
  self getSubcommandOptsMixedLongShort: {}.
  projectName := subArguments at: 1.
  registration := self resolveProjectRegistrationReference: projectName.
  ^ registration installProjectUsing: self