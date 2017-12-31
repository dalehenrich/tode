as yet unclassified
childNamed: elementName parent: parentNode ifAbsent: absentBlock
  | obj |
  ((self basicChildNameListDisplayOops includes: elementName)
    or: [ elementName = '<<more>>' ])
    ifTrue: [ 
      obj := self
        objectValueForSpecialElementName: elementName
        for: parentNode basicContents ]
    ifFalse: [ obj := self associations at: elementName asNumber ].
  ^ (obj
    asTDObjectNode: parentNode
    topez: parentNode topez
    aspect: parentNode builderAspect)
    name: elementName;
    yourself