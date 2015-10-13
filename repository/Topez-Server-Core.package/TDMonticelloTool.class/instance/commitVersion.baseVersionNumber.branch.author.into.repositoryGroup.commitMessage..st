as yet unclassified
commitVersion: version baseVersionNumber: baseVersionNumber branch: branch author: author into: targetRepos repositoryGroup: repositoryGroup commitMessage: commitMessage
  | baseName nameString ancestry newInfo newVersion |
  baseName := branch notEmpty
    ifTrue: [ version package name , '.' , branch asString , '-' , author ]
    ifFalse: [ version package name , '-' , author ].
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
  targetRepos
    do: [ :targetRepo | self storeVersion: newVersion inRepository: targetRepo ].
  ^ newVersion