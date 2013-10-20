actions
browseVersionsFor: packageName
  | versions |
  versions := self mcTool
    mrVersionsFor: packageName
    in: self repository
    ifAbsent: [ ^ false ].
  versionsWindowId := self mcTool
    mrBrowseRepositoryVersions: versions
    in: self repository
    parentBuilder: self
    windowId: versionsWindowId
    label:
      'Versions of ' , packageName printString , ' in ' , self repository description