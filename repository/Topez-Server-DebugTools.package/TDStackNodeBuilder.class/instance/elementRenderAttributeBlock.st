as yet unclassified
elementRenderAttributeBlock
  ^ [ :theNode :elementName | 
  theNode basicContents currentFrame frameIndex asString = elementName
    ifTrue: [ 
      {(TextColor color: Color red).
      (TextEmphasis bold)} ]
    ifFalse: [ theNode class objectTextAttributes ] ]