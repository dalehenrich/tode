as yet unclassified
windowLabel
  ^ '['
    ,
      (self resolved
        ifTrue: [ 'selection: ' , self selection asString printString ]
        ifFalse: [ 'selection: none' ])
    , ' view: ' , self view asString printString , '] ' , self printString