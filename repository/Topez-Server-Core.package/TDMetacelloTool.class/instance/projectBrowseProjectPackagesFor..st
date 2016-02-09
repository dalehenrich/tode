project api
projectBrowseProjectPackagesFor: registration
  ^ self
    projectBrowseProjectPackagesFor: registration
    selectWorkingCopies: [ :wc | true ]
    label: 'Packages for ' , registration projectName