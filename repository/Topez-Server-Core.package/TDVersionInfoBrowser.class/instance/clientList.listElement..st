tools
clientList: miniTool listElement: listElement
  theMiniTool := miniTool.
  versionInfos := versionInfoBlock value.
  ^ versionInfos
    collect: [ :vi | 
      vi == selectedVersionInfo
        ifTrue: [ vi name asText allBold ]
        ifFalse: [ vi name ] ]