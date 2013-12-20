actions
browseVersionsFor: packageName
  | versions wc |
  versions := self mcTool
    mrVersionsFor: packageName
    in: self repository
    ifAbsent: [ ^ false ].
  wc := self mcTool
    resolveWorkingCopyReference: packageName
    ifAbsent: [ self error: 'No working copy named ' , packageName printString , ' found.' ].
  versionsWindowId := self mcTool
    mrBrowseRepositoryVersions: versions
    in: self repository
    workingCopy: wc
    parentBuilder: self
    windowId: versionsWindowId
    label:
      'Versions of ' , packageName printString , ' in ' , self repository description