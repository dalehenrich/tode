as yet unclassified
childNamed: elementName parent: parentNode ifAbsent: absentBlock
  | obj |
  obj := elementName isAllDigits
    ifTrue: [ 
      [ parentNode basicContents _at: elementName asNumber ]
        on: Error
        do: [ :ex | 'error accessing index: ' , elementName printString , ' --> ' , ex description ] ]
    ifFalse: [ 
      (#('(class)' '(oop)' '(value)') includes: elementName)
        ifTrue: [ self objectValueForSpecialElementName: elementName for: parentNode basicContents ]
        ifFalse: [ parentNode basicContents instVarNamed: elementName ] ].
  ^ (obj asTDObjectNode: parentNode topez: parentNode topez aspect: parentNode aspect)
    name: elementName;
    yourself