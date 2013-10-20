actions
browseVersion: listElement selectedIndex: index
  | resolvedVersion version snapshot |
  index = 0
    ifTrue: [ ^ false ].
  resolvedVersion := self versions at: index.
  version := resolvedVersion version.
  snapshot := version snapshot.
  self mcTool mcbrowseSnapshot: snapshot.
  ^ true