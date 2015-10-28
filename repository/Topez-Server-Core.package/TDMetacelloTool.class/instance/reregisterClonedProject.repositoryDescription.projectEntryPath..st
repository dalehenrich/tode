private
reregisterClonedProject: registration repositoryDescription: repositoryDescription projectEntryPath: projectEntryPath
  | newRegistration |
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
  newRegistration
    entry: nil;
    entryNode: registration projectPath: projectEntryPath topez: self topez.	"force creation of a project entry at projectEntryPath with cloned information"
  ^ newRegistration