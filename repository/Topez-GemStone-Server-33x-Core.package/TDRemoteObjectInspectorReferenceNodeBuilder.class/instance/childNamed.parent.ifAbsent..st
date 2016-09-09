as yet unclassified
childNamed: elementName parent: parentNode ifAbsent: absentBlock
  | obj objOop |
  elementName isAllDigits
    ifTrue: [ 
      [ 
      objOop := parentNode basicContents childNodeIndexableOops
        at: elementName asNumber ]
        on: Error
        do: [ :ex | 'error accessing index: ' , elementName printString , ' --> ' , ex description ] ]
    ifFalse: [ objOop := parentNode basicContents childNodeNamedOops at: elementName ].
  obj := TDRemoteObjectInspectorReference
    objectOop: objOop
    session: parentNode basicContents session.
  ^ (obj
    asTDObjectNode: parentNode
    topez: parentNode topez
    aspect: parentNode builderAspect)
    name: elementName;
    yourself