project api
projectBrowseProjectDirtyPackagesFor: registration
  | block mcTool |
  block := [ 
  | wcs |
  wcs := registration workingCopies asArray
    sorted: [ :a :b | a packageName <= b packageName ].
  wcs select: [ :wc | wc modified ] ].
  ^ (self topez toolInstanceFor: 'mc')
    mcBrowseWorkingCopies: block
    parentBuilder: nil
    windowLocation: #'app3'
    windowId: nil
    label: 'Dirty Packages for ' , registration projectName