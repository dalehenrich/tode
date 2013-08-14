as yet unclassified
resolveRepositoryReference: repositoryDescription
  ^ (repositoryDescription beginsWith: '@')
    ifTrue: [ self resolveAtPathReference: repositoryDescription ]
    ifFalse: [ self repositoryFromDescription: repositoryDescription ]