as yet unclassified
mcdelete
  "mc delete <pkg-name>
      delete @<workingCopy-path>
  "

  | packageName wc |
  packageName := tokens at: 2.
  wc := self resolveWorkingCopyReference: packageName.
  ^ self mcdeleteWorkingCopy: wc