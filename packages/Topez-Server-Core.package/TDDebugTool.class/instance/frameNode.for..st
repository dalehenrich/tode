as yet unclassified
frameNode: frameIndex for: aTDStack
  | node stackFrame |
  stackFrame := aTDStack frames at: frameIndex.
  node := TDObjectNode new
    name: frameIndex asString;
    topez: topez;
    readMe: 'stack frame at index' , frameIndex printString;
    basicContents: stackFrame;
    editBlock: [ :theNode :anAspect :windowId | 
          anAspect == #'inspect'
            ifTrue: [ theNode edit: theNode topez aspect: anAspect windowId: windowId ]
            ifFalse: [ theNode basicContents edit: theNode topez aspect: anAspect windowId: windowId ] ];
    listBlock: [ :theNode | theNode basicContents elementNodeNames ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          (theNode basicContents nodeFor: elementName topez: theNode topez ifAbsent: absentBlock)
            name: elementName;
            parent: theNode;
            yourself ];
    yourself.
  ^ node