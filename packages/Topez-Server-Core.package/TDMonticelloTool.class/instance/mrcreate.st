as yet unclassified
mrcreate
  "mr create <repository-spec>"

  | repo |
  repo := self repositoryFromDescription: (tokens at: 2).
  MCRepositoryGroup default addRepository: repo.
  ^ repo