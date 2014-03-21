tools
clientList: miniTool listElement: listElement
  | l |
  theMiniTool := miniTool.
  versionInfos := versionInfoBlock value.
  l := versionInfos
    collect: [ :vi | 
      vi == selectedVersionInfo
        ifTrue: [ vi name asText allBold ]
        ifFalse: [ vi name ] ].
  ^ l -> -0