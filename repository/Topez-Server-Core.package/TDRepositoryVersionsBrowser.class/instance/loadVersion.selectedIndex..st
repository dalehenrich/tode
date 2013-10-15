actions
loadVersion: listElement selectedIndex: index
  | version |
  index = 0
    ifTrue: [ ^ false ].
  version := (self versions at: index) version.
  ^ self mcTool mcload: version info name from: self repository