as yet unclassified
snapshotFor: versionName in: repoSpec
  | repo reference version |
  repo := self repositoryFromDescription: repoSpec.
  reference := GoferResolvedReference name: versionName repository: repo.
  version := reference version.
  ^ version snapshot