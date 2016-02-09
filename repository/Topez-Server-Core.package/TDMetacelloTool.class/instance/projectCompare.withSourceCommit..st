project
projectCompare: projectName withSourceCommit: sourceCommitOrNil
  | registration source |
  registration := self projectRegistrationFor: projectName.
  source := sourceCommitOrNil.
  source
    ifNil: [ 
      "if not commit specified, then compare with the SHA of the commit on disk"
      source := registration currentVersionString ].
  ^ self projectCompareFor: registration withSourceCommit: source