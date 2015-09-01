as yet unclassified
mcbump
  "mc bump <package-name> <repository-spec> <commit-message>"

  | packageName repo resolvedReferences versions version newVersionName newVersion ancestry newInfo commitMessage versionRef author |
  packageName := tokens at: 2.
  repo := self resolveRepositoryReference: (tokens at: 3).
  commitMessage := tokens at: 4.
  resolvedReferences := self resolvedReferencesForRepository: repo.
  versions := resolvedReferences
    at: packageName
    ifAbsent: [ ^ 'No package named: ' , packageName printString , ' found.' ].
  version := versions last version.
  ancestry := MCWorkingAncestry new addAncestor: version info.
  versionRef := GoferVersionReference name: version info name.
  author := versionRef author.
  author isEmpty
    ifTrue: [ author := MCPlatformSupport authorInitials ].
  newVersionName := (versionRef metacelloPackageNameWithBranch at: 2) , '-'
    , author , '.' , (versionRef versionNumber + 1) asString.
  newInfo := ancestry infoWithName: newVersionName message: commitMessage.
  newVersion := MCVersion
    package: version package
    info: newInfo
    snapshot: version snapshot
    dependencies: version dependencies.
  Transcript
    cr;
    show: 'Bumped: ' , newVersionName printString , ' --' , repo description.
  ^ self storeVersion: newVersion inRepository: repo