instance creation
importFrom: filepath
  FileStream
    readOnlyFileNamed: filepath
    do: [ :fileStream | ^ (STON fromUTF8EncodedString: fileStream contents) asTDSessionDescription ]