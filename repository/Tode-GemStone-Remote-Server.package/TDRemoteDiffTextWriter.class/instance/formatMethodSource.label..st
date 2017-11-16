private
formatMethodSource: methodSource label: label
  | formattedSource |
  formattedSource := [ 
  (RBParser
    parseMethod: methodSource
    onError: [ :err :pos | formattedSource := methodSource ]) formattedCode ]
    on: Error
    do: [ :ex | ex return: methodSource ].
  ^ ('----- Method: ' , label , String lf , formattedSource)
    withSqueakLineEndings