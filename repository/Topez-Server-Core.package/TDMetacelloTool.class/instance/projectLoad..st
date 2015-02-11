project api
projectLoad: projectName
  | registration |
  registration := self resolveProjectRegistrationReference: projectName.
  registration loadProjectUsing: self