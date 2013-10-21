as yet unclassified
mcancestors
  "mc ancestors <packageName> 
      ancestors @<workingCopy-path> 
  "

  | packageName workingCopy |
  packageName := tokens at: 2.
  workingCopy := self resolveWorkingCopyReference: packageName.
  self
    mcBrowseVersionInfoFor: workingCopy
    label: 'History for ' , workingCopy package name.
  ^ workingCopy