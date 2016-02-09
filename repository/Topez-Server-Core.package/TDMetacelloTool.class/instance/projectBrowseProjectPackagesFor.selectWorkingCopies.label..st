project api
projectBrowseProjectPackagesFor: registration selectWorkingCopies: selectWorkingCopiesBlock label: label
  | block mcTool |
  block := [ 
  | wcs |
  wcs := registration workingCopies asArray
    sorted: [ :a :b | a packageName <= b packageName ].
  wcs select: selectWorkingCopiesBlock ].
  ^ (self topez toolInstanceFor: 'mc')
    mcBrowseWorkingCopies: block
    parentBuilder: nil
    windowLocation: #'app3'
    windowId: nil
    label: label