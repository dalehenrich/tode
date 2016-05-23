project api
projectBrowseProjectPackagesFor: registration selectWorkingCopies: selectWorkingCopiesBlock label: label
  | block newPackageBlock |
  block := [ 
  | wcs |
  wcs := registration workingCopies asArray
    sorted: [ :a :b | a packageName <= b packageName ].
  wcs select: selectWorkingCopiesBlock ].
  newPackageBlock := [ :package | 
  registration isBaselineBased
    ifTrue: [ 
      self
        addPackageNamed: package packageName
        toBaselineNamed: registration baselineClassName
        inSection: #'common' ].
  registration repositories
    do: [ :repo | package repositoryGroup addRepository: repo ].
  package modified: true ].
  ^ (self topez toolInstanceFor: 'mc')
    mcBrowseWorkingCopies: block
    newPackageBlock: newPackageBlock
    parentBuilder: nil
    windowLocation: #'app3'
    windowId: nil
    label: label