as yet unclassified
mrcreate: description
  | repo |
  repo := self repositoryFromDescription: description.
  MCRepositoryGroup default addRepository: repo.
  ^ repo