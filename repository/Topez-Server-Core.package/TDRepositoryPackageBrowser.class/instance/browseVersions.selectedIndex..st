actions
browseVersions: listElement selectedIndex: selectedIndex
  | packagesSpec packageNames packageName versions |
  selectedIndex = 0
    ifTrue: [ ^ false ].
  packagesSpec := self packagesSpec.
  packageNames := packagesSpec at: 1.
  packageName := packageNames at: selectedIndex.
  self browseVersionsFor: packageName.
  ^ true