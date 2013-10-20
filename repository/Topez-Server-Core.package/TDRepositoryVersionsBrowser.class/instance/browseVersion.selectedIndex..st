actions
browseVersion: listElement selectedIndex: index
  | version |
  index = 0
    ifTrue: [ ^ false ].
  self halt.
  ^ true