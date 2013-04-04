as yet unclassified
name
  | ancestors |
  ancestors := self workingCopy ancestry ancestors.
  ancestors isEmpty
    ifTrue: [ ^ self packageName ].
  ^ ancestors first name