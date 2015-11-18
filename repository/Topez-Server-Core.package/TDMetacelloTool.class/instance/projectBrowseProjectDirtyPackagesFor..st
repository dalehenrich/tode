project api
projectBrowseProjectDirtyPackagesFor: registration
  ^ self
    projectBrowseProjectPackagesFor: registration
    selectWorkingCopies: [ :wc | wc modified ]