accessing
exportTo: filepath extension: extension
  | stream |
  stream := FileStream forceNewFileNamed: filepath , self name , extension.
  stream lineEndConvention: #'lf'.
  stream nextPutAll: (TodeObjectSerializer preferredSerializer toString: self).
  stream close