as yet unclassified
childNamed: elementName parent: parentNode ifAbsent: absentBlock
  | obj |
  obj := (parentNode basicContents
    perform: (self class labelMap at: elementName)) asArray.
  ^ (obj
    asTDObjectNode: parentNode
    topez: parentNode topez
    aspect: parentNode builderAspect)
    name: elementName;
    yourself