project list
fieldOne
  | nm |
  nm := self projectName.
  self isDirty
    ifTrue: [ 
      | dirtyBit |
      self isImageDirty
        ifTrue: [ dirtyBit := '*' ]
        ifFalse: [ dirtyBit := '' ].
      self isGitDirty
        ifTrue: [ dirtyBit := dirtyBit , '+' ].
      nm := dirtyBit , ' ' , nm ].
  self isLocked
    ifTrue: [ nm := '|' , nm , '|' ].
  ^ nm