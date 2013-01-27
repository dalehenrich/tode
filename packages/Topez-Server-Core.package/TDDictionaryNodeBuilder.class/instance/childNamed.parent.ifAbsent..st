as yet unclassified
childNamed: elementName parent: parentNode ifAbsent: absentBlock
  | obj |
  obj := self associations at: elementName asNumber.
  ^ (obj asTDObjectNode: parentNode topez: parentNode topez aspect: parentNode aspect)
    name: elementName;
    yourself