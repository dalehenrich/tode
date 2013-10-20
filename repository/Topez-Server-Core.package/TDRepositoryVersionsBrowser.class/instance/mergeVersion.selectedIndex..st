actions
mergeVersion: listElement selectedIndex: index
  | resolvedVersion version |
  index = 0
    ifTrue: [ ^ false ].
  resolvedVersion := self versions at: index.
  version := resolvedVersion version.
  self mcTool mcmerge: self workingCopy and: version in: self repository.
  ^ true