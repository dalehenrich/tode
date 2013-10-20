actions
savePackage: listElement selectedIndex: selectedIndex
  | packagesSpec packageNames packageName versions |
  selectedIndex = 0
    ifTrue: [ ^ false ].
  self halt.
  ^ true