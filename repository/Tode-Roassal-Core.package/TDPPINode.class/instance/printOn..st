printing
printOn: aStream
  aStream
    nextPutAll:
      self className , ', ' , self oop asString , '[' , self children size printString
        , '::' , self parents size printString , ']'