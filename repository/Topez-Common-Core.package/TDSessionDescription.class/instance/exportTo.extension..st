accessing
exportTo: filepath extension: extension
  | stream |
  stream := FileStream forceNewFileNamed: filepath , self name , extension.
  stream lineEndConvention: #'lf'.
  stream nextPutAll: (STON toUTF8EncodedString: self).
  stream close