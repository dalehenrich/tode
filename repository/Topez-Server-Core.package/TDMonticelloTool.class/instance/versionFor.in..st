as yet unclassified
versionFor: versionName in: repoSpec
  | repo reference version |
  repo := self repositoryFromDescription: repoSpec.
  reference := GoferResolvedReference name: versionName repository: repo.
  ^ reference version