as yet unclassified
commitVersion: version baseVersionNumber: baseVersionNumber attribute: attribute into: targetRepo repositoryGroup: repositoryGroup commitMessage: commitMessage
  | baseName nameString ancestry newInfo newVersion |
  baseName := attribute notEmpty
    ifTrue: [ version package name , '.' , attribute asString , '-dkh' ]
    ifFalse: [ version package name , '-dkh' ].
  nameString := self
    uniqueVersionName: baseName
    baseVersionNumber: baseVersionNumber
    repositoryGroup: repositoryGroup.
  ancestry := MCWorkingAncestry new addAncestor: version info.
  newInfo := ancestry infoWithName: nameString message: commitMessage.
  newVersion := MCVersion
    package: version package
    info: newInfo
    snapshot: version snapshot
    dependencies: version dependencies.
  targetRepo storeVersion: newVersion.
  ^ newVersion