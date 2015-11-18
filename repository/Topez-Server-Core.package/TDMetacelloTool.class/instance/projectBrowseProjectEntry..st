project api
projectBrowseProjectEntry: projectName
  | registration |
  registration := self resolveProjectRegistrationReference: projectName.
  ^ self projectBrowseProjectEntryFor: registration