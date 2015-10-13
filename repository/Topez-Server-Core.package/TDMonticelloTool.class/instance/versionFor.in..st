as yet unclassified
versionFor: versionName in: repoSpecOrObjRef
  | repo |
  repo := self resolveRepositoryReference: repoSpecOrObjRef.
  ^ self versionFor: versionName inRepository: repo