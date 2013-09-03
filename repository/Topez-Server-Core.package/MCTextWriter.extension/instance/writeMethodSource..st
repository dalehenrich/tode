*topez-server-core
writeMethodSource: definition
  | formattedSource |
  formattedSource := [ 
  (RBParser
    parseMethod: definition source
    onError: [ :err :pos | formattedSource := definition source ]) formattedCode ]
    on: Error
    do: [ :ex | ex return: definition source ].
  stream nextChunkPut: formattedSource withSqueakLineEndings