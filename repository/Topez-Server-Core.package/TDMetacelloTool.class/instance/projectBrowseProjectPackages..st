project api
projectBrowseProjectPackages: projectName
  | registration |
  registration := self resolveProjectRegistrationReference: projectName.
  ^ self projectBrowseProjectPackagesFor: registration