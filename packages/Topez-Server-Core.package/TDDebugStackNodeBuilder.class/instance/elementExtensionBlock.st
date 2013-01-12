as yet unclassified
elementExtensionBlock
  ^ [ :theNode :elementName | 
  theNode basicContents currentFrame frameIndex asString = elementName
    ifTrue: [ '==>' , theNode class objectExtension ]
    ifFalse: [ theNode class objectExtension ] ]