accessing
repositoryDescription
  | repositorySpec |
  repositorySpec := self repositorySpec.
  (repositorySpec type = 'cache' or: [ repositorySpec description = 'cache' ])
    ifTrue: [ ^ '' ].
  ^ repositorySpec description