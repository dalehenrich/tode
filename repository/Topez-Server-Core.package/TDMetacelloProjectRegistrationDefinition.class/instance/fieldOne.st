project list
fieldOne
  | nm |
  nm := self projectName.
  self isImageDirty
    ifTrue: [ nm := '* ' , nm ]
    ifFalse: [ 
      self isGitDirty
        ifTrue: [ nm := '+ ' , nm ] ].
  self isLocked
    ifTrue: [ nm := '|' , nm , '|' ].
  ^ nm