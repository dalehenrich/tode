accessing
label
  ^ self isMeta
    ifTrue: [ self className , ' class -->' , self categoryName printString ]
    ifFalse: [ self className , '-->' , self categoryName printString ]