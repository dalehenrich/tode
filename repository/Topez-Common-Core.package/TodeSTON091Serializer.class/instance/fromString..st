serialization
fromString: aString
  ^ (STON091Reader on: aString decodeFromUTF8 readStream) next