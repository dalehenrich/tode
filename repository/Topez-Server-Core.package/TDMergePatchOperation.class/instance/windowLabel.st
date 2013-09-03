as yet unclassified
windowLabel
  ^ self operation printString , '[' , self selection asString printString
    , ', '
    ,
      (self displayDiffs
        ifTrue: [ 'diff' ]
        ifFalse: [ 'no diff' ]) printString
    , ']'