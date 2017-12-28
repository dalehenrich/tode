as yet unclassified
formatSource
  self useFormatter ifFalse: [ ^ self source asString ]. 
  ^ (RBParser
    parseMethod: self source asString
    onError: [ :err :pos | ^ self source ]) formattedCode