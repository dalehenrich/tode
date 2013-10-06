as yet unclassified
windowLabel
  ^ self printString , '[' , self selection asString printString , ', '
    ,
      (self displayDiffs
        ifTrue: [ 'diff' ]
        ifFalse: [ 'no diff' ]) printString
    , ']'