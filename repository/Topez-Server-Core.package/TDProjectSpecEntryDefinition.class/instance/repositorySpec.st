accessing
repositorySpec
  | repositorySpec |
  self projectSpec repositorySpecs do: [ :spec | repositorySpec := spec ].
  ^ repositorySpec