actions
versionChanges: listElement selectedIndex: index
  | resolvedVersion version |
  index = 0
    ifTrue: [ ^ false ].
  resolvedVersion := self versions at: index.
  version := resolvedVersion version.
  self browseChangesBetween: self workingCopy and: version info.
  ^ true