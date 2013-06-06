stash
adornmentColorFor: aString
  ^ (self topezClientClass
    sessionNamed: aString
    ifAbsent: [ ^ self class defaultAdornmentColor ]) adornmentColor