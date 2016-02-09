project api
projectBrowseProjectClasses: projectName
  | registration |
  registration := self resolveProjectRegistrationReference: projectName.
  ^ self projectBrowseProjectClassesFor: registration