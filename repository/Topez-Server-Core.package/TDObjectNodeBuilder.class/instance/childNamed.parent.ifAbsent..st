as yet unclassified
childNamed: elementName parent: parentNode ifAbsent: absentBlock
  | obj |
  elementName isAllDigits
    ifTrue: [ 
      [ obj := parentNode basicContents _at: elementName asNumber ]
        on: Error
        do: [ :ex | 'error accessing index: ' , elementName printString , ' --> ' , ex description ] ]
    ifFalse: [ 
      (#('(class)' '(oop)' '(value)') includes: elementName)
        ifTrue: [ self objectValueForSpecialElementName: elementName for: parentNode basicContents ]
        ifFalse: [ 
          | ivarIndex |
          obj := parentNode basicContents.
          (ivarIndex := obj class allInstVarNames indexOf: elementName asSymbol)
            = 0
            ifTrue: [ ^ absentBlock value ].
          obj instVarAt: ivarIndex ] ].
  ^ (obj
    asTDObjectNode: parentNode
    topez: parentNode topez
    aspect: parentNode builderAspect)
    name: elementName;
    yourself