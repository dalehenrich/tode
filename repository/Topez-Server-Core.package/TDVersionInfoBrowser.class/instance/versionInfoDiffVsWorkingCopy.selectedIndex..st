actions
versionInfoDiffVsWorkingCopy: listElement selectedIndex: selectedIndex
  | versionInfo stream |
  selectedIndex = 0
    ifTrue: [ ^ false ].
  versionInfo := self versionInfos at: selectedIndex.
  self browseChangesBetween: self workingCopy and: versionInfo.
  ^ true