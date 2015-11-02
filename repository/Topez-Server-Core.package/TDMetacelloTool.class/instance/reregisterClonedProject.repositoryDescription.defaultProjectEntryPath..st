private
reregisterClonedProject: registration repositoryDescription: repositoryDescription defaultProjectEntryPath: defaultProjectEntryPath
  | newRegistration newProjectEntryPath |
  Metacello new
    baseline: registration projectName;
    repository: repositoryDescription;
    register;
    lock.
  newRegistration := self projectRegistrationFor: registration projectName.
  (self topez toolInstanceFor: 'project')
    projectMap: registration
    from: registration repository
    toRepository: newRegistration repository.
  newProjectEntryPath := defaultProjectEntryPath.
  registration entry
    ifNotNil: [ :oldEntry | oldEntry projectPath ifNotNil: [ :path | newProjectEntryPath := path ] ].
  newRegistration
    entry: nil;
    entryNode: registration projectPath: newProjectEntryPath topez: self topez.	"force creation of a project entry at projectEntryPath with cloned information"
  ^ newRegistration