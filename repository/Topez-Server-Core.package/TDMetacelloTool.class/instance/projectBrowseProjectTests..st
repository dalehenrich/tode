project api
projectBrowseProjectTests: projectName
  | registration |
  registration := self resolveProjectRegistrationReference: projectName.
  ^ self projectBrowseProjectTestsFor: registration