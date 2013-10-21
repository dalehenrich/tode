accessing
repositories
  repositories ifNil: [ repositories := repositoryBlock value ].
  ^ repositories