project list
fieldOne
  | nm |
  nm := self projectName.
  self isDirty
    ifTrue: [ nm := '+ ' , nm ].
  ^ nm