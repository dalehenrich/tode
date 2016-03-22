as yet unclassified
childNamed: elementName parent: parentNode ifAbsent: absentBlock
  | obj |
  elementName isAllDigits
    ifTrue: [ 
      [ obj := self objects _at: elementName asNumber ]
        on: Error
        do: [ :ex | 'error accessing index: ' , elementName printString , ' --> ' , ex description ] ]
    ifFalse: [ ^ super childNamed: elementName parent: parentNode ifAbsent: absentBlock ].
  ^ (obj
    asTDObjectNode: parentNode
    topez: parentNode topez
    aspect: parentNode builderAspect)
    name: elementName;
    yourself