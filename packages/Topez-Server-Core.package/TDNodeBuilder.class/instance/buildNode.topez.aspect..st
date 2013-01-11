as yet unclassified
buildNode: parentNode topez: aTopez aspect: anAspect
  ^ TDObjectNode new
    name: self objectPrintString;
    parent: parentNode;
    aspect: anAspect;
    topez: aTopez;
    basicContents: self object;
    listBlock: [ :theNode | 
          | indexedSize coll |
          coll := theNode basicContents class allInstVarNames sorted collect: [ :each | each asString ].
          indexedSize := (Reflection sizeOf: theNode basicContents) - coll size.
          coll , ((1 to: indexedSize) collect: [ :each | each asString ]) ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          | obj |
          obj := elementName isAllDigits
            ifTrue: [ 
              [ theNode basicContents _at: elementName asNumber ]
                on: Error
                do: [ :ex | 'error accessing index: ' , elementName printString , ' --> ' , ex description ] ]
            ifFalse: [ theNode basicContents instVarNamed: elementName ].
          (obj asTDObjectNode: theNode topez: theNode topez aspect: anAspect)
            name: elementName;
            yourself ];
    yourself