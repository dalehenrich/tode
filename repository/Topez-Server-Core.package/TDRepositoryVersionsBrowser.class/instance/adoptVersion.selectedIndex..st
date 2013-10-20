actions
adoptVersion: listElement selectedIndex: index
  | resolvedVersion version |
  index = 0
    ifTrue: [ ^ false ].
  resolvedVersion := self versions at: index.
  version := resolvedVersion version.
  self mcTool mcadopt: self workingCopy version: version.
  ^ true