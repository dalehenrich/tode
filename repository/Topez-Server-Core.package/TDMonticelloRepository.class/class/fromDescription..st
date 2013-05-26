as yet unclassified
fromDescription: aRepositoryDescription
  | descr url repository |
  repository := (MetacelloMCProject new repositorySpec
    description: aRepositoryDescription;
    yourself) createRepository.
  url := Url absoluteFromText: aRepositoryDescription.
  ^ self new
    url: url;
    repository: repository;
    yourself