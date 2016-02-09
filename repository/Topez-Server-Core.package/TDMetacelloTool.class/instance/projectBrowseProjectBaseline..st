project api
projectBrowseProjectBaseline: projectName
  | registration |
  registration := self resolveProjectRegistrationReference: projectName.
  ^ self projectBrowseProjectBaselineFor: registration