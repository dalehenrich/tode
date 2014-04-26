as yet unclassified
deploy
  | configurationClass versionString versionMap updateGitRepos ar newVersionsMap |
  updateGitRepos := true.
  tokens size >= 2
    ifTrue: [ updateGitRepos := (tokens at: 2) = 'true' ].
  configurationClass := self loadConfigurationOfFileTree.
  versionString := self versionString.
  ar := self
    createVersionMapFor: configurationClass
    version: versionString
    updateGitRepos: updateGitRepos.
  newVersionsMap := self
    commitVersionsFrom: (ar at: 1)
    into: self targetRepo
    commitMessage: self commitMessage.
  self
    modifyConfiguration: configurationClass
    version: versionString
    newVersionsMap: newVersionsMap.
  ^ ar , {newVersionsMap}