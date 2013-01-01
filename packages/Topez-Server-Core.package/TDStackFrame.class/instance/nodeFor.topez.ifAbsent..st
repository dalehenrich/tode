as yet unclassified
nodeFor: elementName topez: topez ifAbsent: absentBlock
  ^ (self objectFor: elementName ifAbsent: absentBlock) asTDObjectNode: topez aspect: #'edit'