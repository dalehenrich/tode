actions
browseRepositoryPackages: listElement selectedIndex: selectedIndex
  | repository |
  selectedIndex = 0
    ifTrue: [ ^ false ].
  repository := self repositories at: selectedIndex.
  self mcTool
    mrBrowseRepositoryPackges: repository
    workingCopy: self workingCopy
    label: 'Packages for ' , repository description