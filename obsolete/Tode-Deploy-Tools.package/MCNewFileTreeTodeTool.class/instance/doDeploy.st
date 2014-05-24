as yet unclassified
doDeploy
  | configurationClass versionMap ar newVersionsMap |
  configurationClass := self loadConfigurationOf.
  ar := self createVersionMapFor: configurationClass.
  newVersionsMap := self commitVersionsFrom: (ar at: 1).
  self
    modifyConfiguration: configurationClass
      version: self version
      newVersionsMap: newVersionsMap;
    modifyConfiguration: configurationClass releaseVersion: self version;
    modifyConfiguration: configurationClass
      symbolictVersion: #'stable'
      version: self version.
  ^ ar , {newVersionsMap}