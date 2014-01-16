as yet unclassified
childNamed: elementName parent: parentNode ifAbsent: absentBlock
  | obj |
  (#('(class)' '(oop)') includes: elementName)
    ifTrue: [ 
      obj := self
        objectValueForSpecialElementName: elementName
        for: parentNode basicContents ]
    ifFalse: [ obj := self keys at: elementName asNumber ].
  ^ (obj
    asTDObjectNode: parentNode
    topez: parentNode topez
    aspect: parentNode builderAspect)
    name: elementName;
    yourself