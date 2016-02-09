project api
projectBrowseProjectBaselineOrConfiguration: projectName
  | registration |
  registration := self resolveProjectRegistrationReference: projectName.
  ^ self projectBrowseProjectBaselineOrConfigurationFor: registration