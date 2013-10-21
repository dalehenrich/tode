actions
versionHistory: listElement selectedIndex: index
  | version resolvedVersion |
  index = 0
    ifTrue: [ ^ false ].
  resolvedVersion := self versions at: index.
  version := resolvedVersion version.
  versionInfoWindowId := self mcTool
    mcBrowseVersionInfo: [ {(version info)} , version info allAncestors ]
    repository: resolvedVersion repository
    parentBuilder: self
    windowId: versionInfoWindowId
    label: 'History for ' , version name.
  ^ true