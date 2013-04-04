as yet unclassified
childNamed: elementName parent: parentNode ifAbsent: absentBlock
  ^ (parentNode basicContents
    nodeFor: parentNode
    elementName: elementName
    topez: parentNode topez
    ifAbsent: absentBlock)
    name: elementName;
    parent: parentNode;
    yourself