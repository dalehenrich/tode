serialization
toStringPretty: anObject
  ^ String
    streamContents: [ :stream | 
      self prettyWriter
        on: stream;
        nextPut: anObject ]