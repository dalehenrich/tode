tools
clientList: miniTool listElement: listElement
  | packageNames packagesSpec loadedVersions resolvedReferences l |
  theMiniTool := miniTool.
  packagesSpec := self packagesSpec.
  packageNames := packagesSpec at: 1.
  loadedVersions := packagesSpec at: 2.
  resolvedReferences := packagesSpec at: 3.
  l := self versions
    collect: [ :resolvedReference | 
      | attributes packageName |
      attributes := {(TextEmphasis normal)}.
      packageName := resolvedReference packageName.
      loadedVersions
        at: packageName
        ifPresent: [ :versionReference | 
          versionReference name = resolvedReference name
            ifTrue: [ attributes add: TextEmphasis underlined ] ].
      Text string: resolvedReference name attributes: attributes ].
  ^ l -> nil