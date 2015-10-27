project
projectinstall
  "
  project install <project-name>
"

  | projectName registration |
  projectName := subArguments at: 1.
  registration := self resolveProjectRegistrationReference: projectName.
  ^ registration installProjectUsing: self