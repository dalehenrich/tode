as yet unclassified
mmCommit: projectName commitMessage: commitMessage
  | registration projectSpec workingCopies committed |
  registration := self getRegistrationFor: projectName.
  projectSpec := registration lookupBaselineSpec.
  workingCopies := (self modifiedPackagesForProjectSpec: projectSpec)
    collect: [ :packageSpec | packageSpec workingCopy ].
  workingCopies isEmpty
    ifTrue: [ ^ #() ].
  committed := self
    commitWorkingCopies: workingCopies
    commitMessage: commitMessage.
  self topez commitTransaction.
  ^ committed