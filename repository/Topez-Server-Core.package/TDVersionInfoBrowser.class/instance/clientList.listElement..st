tools
clientList: miniTool listElement: listElement
  theMiniTool := miniTool.
  ^ self versionInfos
    collect: [ :vi | 
      vi == selectedVersionInfo
        ifTrue: [ vi name asText allBold ]
        ifFalse: [ vi name ] ]