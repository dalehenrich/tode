project api
projectBrowseProjectRepositories: projectName
  | registration |
  registration := self resolveProjectRegistrationReference: projectName.
  ^ self projectBrowseProjectRepositoriesFor: registration