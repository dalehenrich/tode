as yet unclassified
mcrevert
  "mc revert <pkg-name> [<method-spec>]
      revert @<workingCopy-path> [<method-spec>]
  "

  | packageName workingCopy |
  packageName := tokens at: 2.
  workingCopy := self resolveWorkingCopyReference: packageName.
  workingCopy ancestors isEmpty
    ifTrue: [ ^ 'No ancestors for package named ' , packageName printString , ' found' ].
  tokens size > 2
    ifTrue: [ 
      "mc revert <pkg-name> <method-spec>"
      ^ self
        mcrevertMethod: (tokens copyFrom: 3 to: tokens size)
        workingCopy: workingCopy ].
  ^ self mcrevertWorkingCopy: workingCopy