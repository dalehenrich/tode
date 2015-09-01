as yet unclassified
mcmove
  "mc move <version-name> <source-repository-spec> <new-version-name> <destination-repository-spec> <commit-message>
      move @<version-path> <new-version-name> <destination-repository-spec> <commit-message>
  "

  | repoSpec version repo resolutionAr newVersionName newVersion ancestry newInfo commitMessage |
  resolutionAr := self resolveVersionReferenceStartingAt: 2 inTokens: tokens.
  version := resolutionAr at: 1.
  newVersionName := tokens at: (resolutionAr at: 2).
  repoSpec := tokens at: (resolutionAr at: 2) + 1.
  repo := self resolveRepositoryReference: repoSpec.
  commitMessage := tokens at: (resolutionAr at: 2) + 2.
  ancestry := MCWorkingAncestry new addAncestor: version info.
  newInfo := ancestry infoWithName: newVersionName message: commitMessage.
  newVersion := MCVersion
    package: version package
    info: newInfo
    snapshot: version snapshot
    dependencies: version dependencies.
  Transcript
    cr;
    show: 'Moved: ' , newVersionName printString , ' --' , repo description.
  ^ self storeVersion: newVersion inRepository: repo