project
projectGet: projectName
  | registration |
  registration := self resolveProjectRegistrationReference: projectName.
  ^ self projectGetFor: registration