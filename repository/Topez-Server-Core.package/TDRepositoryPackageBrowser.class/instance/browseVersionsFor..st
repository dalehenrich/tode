actions
browseVersionsFor: packageName
  | versions |
  versions := self mcTool
    mrVersionsFor: packageName
    in: self repository
    ifAbsent: [ ^ false ].
  self mcTool
    mrBrowseRepositoryVersions: versions
    in: self repository
    label:
      'Versions of ' , packageName printString , ' in ' , self repository description