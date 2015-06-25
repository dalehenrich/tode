instance creation
importFrom: filepath
  FileStream
    readOnlyFileNamed: filepath
    do: [ :fileStream | 
      ^ (TodeObjectSerializer preferredSerializer fromString: fileStream contents)
        asTDSessionDescription ]