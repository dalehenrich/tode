project list
fieldOne
  | nm |
  nm := self projectName.
  self isDirty
    ifTrue: [ nm := '* ' , nm ].
  self isLocked
    ifTrue: [ nm := '|' , nm , '|' ].
  ^ nm