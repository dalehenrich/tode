as yet unclassified
childNamed: elementName parent: parentNode ifAbsent: absentBlock
  elementName isAllDigits
    ifFalse: [ ^ absentBlock value ].
  ^ (parentNode basicContents frameNode: parentNode index: elementName asNumber topez: parentNode topez)
    parent: parentNode;
    name: elementName;
    yourself