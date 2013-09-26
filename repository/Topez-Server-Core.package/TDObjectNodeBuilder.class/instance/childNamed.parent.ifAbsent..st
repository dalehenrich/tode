as yet unclassified
childNamed: elementName parent: parentNode ifAbsent: absentBlock
  | obj |
  elementName isAllDigits
    ifTrue: [ 
      [ obj := parentNode basicContents _at: elementName asNumber ]
        on: Error
        do: [ :ex | 'error accessing index: ' , elementName printString , ' --> ' , ex description ] ]
    ifFalse: [ 
      (self specialChildNames includes: elementName)
        ifTrue: [ 
          obj := self
            objectValueForSpecialElementName: elementName
            for: parentNode basicContents ]
        ifFalse: [ 
          | parent ivarIndex |
          parent := parentNode basicContents.
          (ivarIndex := parent class allInstVarNames
            indexOf: elementName asSymbol) = 0
            ifTrue: [ ^ absentBlock value ].
          obj := parent instVarAt: ivarIndex ] ].
  ^ (obj
    asTDObjectNode: parentNode
    topez: parentNode topez
    aspect: parentNode builderAspect)
    name: elementName;
    yourself