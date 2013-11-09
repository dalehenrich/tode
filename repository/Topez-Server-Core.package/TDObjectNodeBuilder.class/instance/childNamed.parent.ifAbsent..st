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
          | parent ivarIndex elementSymbol |
          parent := parentNode basicContents.
          elementSymbol := elementName asSymbol.
          (ivarIndex := parent class allInstVarNames indexOf: elementSymbol) = 0
            ifTrue: [ 
              (parent dynamicInstanceVariables includes: elementSymbol)
                ifTrue: [ obj := parent dynamicInstVarAt: elementSymbol ]
                ifFalse: [ ^ absentBlock value ] ]
            ifFalse: [ obj := parent instVarAt: ivarIndex ] ] ].
  ^ (obj
    asTDObjectNode: parentNode
    topez: parentNode topez
    aspect: parentNode builderAspect)
    name: elementName;
    yourself