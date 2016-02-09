project
projectInstall: projectName
  | registration |
  registration := self resolveProjectRegistrationReference: projectName.
  ^ self projectInstallFor: registration