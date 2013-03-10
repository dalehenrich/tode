as yet unclassified
repositoryFromDescription: aRepositoryDescription
  | project repositorySpec |
  project := MetacelloMCProject new.
  repositorySpec := project repositorySpec.
  repositorySpec description: aRepositoryDescription.
  ^ MetacelloPlatform current createRepository: repositorySpec