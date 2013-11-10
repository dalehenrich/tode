parsing
parseCommand: aStream
  ^ self new
    parseCommand: aStream;
    yourself