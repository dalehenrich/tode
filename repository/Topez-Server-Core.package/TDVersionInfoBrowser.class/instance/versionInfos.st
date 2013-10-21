accessing
versionInfos
  versionInfos ifNil: [ versionInfos := versionInfoBlock value ].
  ^ versionInfos