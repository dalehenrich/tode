parsing
fromStream: aStream forEachCommand: aBlock
  "multi-line input"

  self fromStream: aStream selectLine: [:cmdLine | true] forEachCommand: aBlock