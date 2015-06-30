serialization
toString: anObject
  ^ String
    streamContents: [ :stream | 
      self writer
        on: stream;
        nextPut: anObject ]