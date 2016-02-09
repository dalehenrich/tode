project api
projectBrowseProjectDirtyPackages: projectName
  | registration |
  registration := self resolveProjectRegistrationReference: projectName.
  ^ self projectBrowseProjectDirtyPackagesFor: registration