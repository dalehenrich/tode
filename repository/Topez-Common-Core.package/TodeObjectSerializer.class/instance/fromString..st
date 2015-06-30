serialization
fromString: aString
  ^ self reader
    on: aString readStream;
    next