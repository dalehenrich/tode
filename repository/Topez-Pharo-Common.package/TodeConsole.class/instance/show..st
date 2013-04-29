stream extensions
show: anObject
  "TextCollector compatibility"

  self
    nextPutAll: anObject asStringOrText;
    endEntry