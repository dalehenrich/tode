as yet unclassified
editorWindowLabel
  ^ self inClass printString , '>>' , self selector asString , ' ['
    , self methodProtocol , ']'