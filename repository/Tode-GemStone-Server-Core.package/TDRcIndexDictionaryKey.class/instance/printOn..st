printing
printOn: aStream
  aStream
    nextPutAll:
      self object asString , '(' , self object asOop asString , '-'
        , self pathTerm asOop asString , ')'