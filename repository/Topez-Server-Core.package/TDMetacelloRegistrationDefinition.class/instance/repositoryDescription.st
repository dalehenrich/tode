accessing
repositoryDescription
  | repositorySpec |
  self repositorySpecs do: [ :spec | repositorySpec := spec ].
  (repositorySpec type = 'cache' or: [ repositorySpec description = 'cache' ])
    ifTrue: [ ^ '' ].
  ^ repositorySpec description