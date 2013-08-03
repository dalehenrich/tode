as yet unclassified
mmCommit: projectName commitMessage: commitMessage
  | registration projectSpec workingCopies |
  registration := self getRegistrationFor: projectName.
  projectSpec := registration lookupBaselineSpec.
  workingCopies := (self modifiedPackagesForProjectSpec: projectSpec)
    collect: [ :packageSpec | packageSpec workingCopy ].
  workingCopies isEmpty
    ifTrue: [ ^ #() ].
  ^ self commitWorkingCopies: workingCopies commitMessage: commitMessage