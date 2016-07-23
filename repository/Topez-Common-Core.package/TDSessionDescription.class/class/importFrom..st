instance creation
importFrom: filepath
  [ 
  FileStream
    readOnlyFileNamed: filepath
    do: [ :fileStream | 
      ^ (TodeObjectSerializer preferredSerializer fromString: fileStream contents)
        asTDSessionDescription ] ]
    on: (Smalltalk at: #'FileDoesNotExistException' ifAbsent: [ Error ])
    do: [ :ex | 
      self
        error:
          'The session description file ' , filepath printString , ' cannot be found.' ]