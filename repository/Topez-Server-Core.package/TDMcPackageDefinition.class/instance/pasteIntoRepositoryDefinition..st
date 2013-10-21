cut/copy/paste
pasteIntoRepositoryDefinition: aTDMonticelloRepositoryDefinition
  "add repository to my repository group"

  self workingCopy repositoryGroup
    addRepository: aTDMonticelloRepositoryDefinition repository.
  ^ true