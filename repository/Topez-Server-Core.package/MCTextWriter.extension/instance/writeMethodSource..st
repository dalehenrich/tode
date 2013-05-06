*topez-server-core
writeMethodSource: definition
  | formattedSource |
  formattedSource := (RBParser
    parseMethod: definition source
    onError: [ :err :pos | formattedSource := definition source ]) formattedCode.
  stream nextChunkPut: formattedSource withSqueakLineEndings