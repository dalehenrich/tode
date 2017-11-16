as yet unclassified
editorWindowLabel
  ^ self object inClassName , '>>' , self selector asString , ' ['
    , self methodProtocol , ']'