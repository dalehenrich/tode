actions
versionInfoSelect: listElement selectedIndex: selectedIndex
  | versionInfo stream oldVersionInfo |
  oldVersionInfo := selectedVersionInfo.
  selectedIndex = 0
    ifTrue: [ ^ false ].
  selectedVersionInfo := self versionInfos at: selectedIndex.
  oldVersionInfo == selectedVersionInfo
    ifTrue: [ selectedVersionInfo := nil ].
  ^ #'refreshList'