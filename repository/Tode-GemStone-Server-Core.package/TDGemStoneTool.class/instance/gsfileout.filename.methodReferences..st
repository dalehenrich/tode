fileout
gsfileout: directoryPath filename: filename methodReferences: methodReferences
  | directory |
  directory := ServerFileDirectory on: directoryPath.
  directory
    forceNewFileNamed: filename
    do: [ :fileStream | 
      methodReferences
        do: [ :ref | ref actualClass fileOutMethod: ref selector on: fileStream ] ]