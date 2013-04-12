as yet unclassified
childNamed: elementName parent: parentNode ifAbsent: absentBlock
  | obj |
  obj := self
    objectValueForSpecialElementName: elementName
    for: parentNode basicContents.
  obj == nil
    ifTrue: [ ^ absentBlock value ].
  ^ (obj
    asTDObjectNode: parentNode
    topez: parentNode topez
    aspect: parentNode builderAspect)
    name: elementName;
    yourself