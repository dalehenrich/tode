actions
savePackage: listElement selectedIndex: selectedIndex
  | packagesSpec packageNames packageName wc |
  selectedIndex = 0
    ifTrue: [ ^ false ].
  selectedIndex = 0
    ifTrue: [ ^ false ].
  packagesSpec := self packagesSpec.
  packageNames := packagesSpec at: 1.
  packageName := packageNames at: selectedIndex.
  wc := self mcTool resolveWorkingCopyReference: packageName.
  self mcTool commitWorkingCopyPrompting: wc repos: {(self repository)}.
  ^ true