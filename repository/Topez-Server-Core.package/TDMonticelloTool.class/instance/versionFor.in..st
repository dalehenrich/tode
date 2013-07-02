as yet unclassified
versionFor: versionName in: repoSpecOrObjRef
  | repo reference version |
  repo := self resolveRepositoryReference: repoSpecOrObjRef.
  reference := GoferResolvedReference name: versionName repository: repo.
  ^ reference version