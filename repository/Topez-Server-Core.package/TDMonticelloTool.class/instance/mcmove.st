as yet unclassified
mcmove
  "mc move <version-name> <source-repository-spec> <new-version-name> <destination-repository-spec>
      move @<version-path> <new-version-name> <destination-repository-spec>
  "

  | repoSpec version repo resolutionAr newVersionName newVersion ancestry newInfo |
  resolutionAr := self resolveVersionReferenceStartingAt: 2 inTokens: tokens.
  version := resolutionAr at: 1.
  newVersionName := tokens at: (resolutionAr at: 2).
  repoSpec := tokens at: (resolutionAr at: 2) + 1.
  repo := self resolveRepositoryReference: repoSpec.
  ancestry := MCWorkingAncestry new addAncestor: version info.
  newInfo := ancestry
    infoWithName: newVersionName
    message: 'renamed to ' , newVersionName printString.
  newVersion := MCVersion
    package: version package
    info: newInfo
    snapshot: version snapshot
    dependencies: version dependencies.
  ^ repo storeVersion: newVersion