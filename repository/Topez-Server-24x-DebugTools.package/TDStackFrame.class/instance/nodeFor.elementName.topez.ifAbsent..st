as yet unclassified
nodeFor: parentNode elementName: elementName topez: topez ifAbsent: absentBlock
  ^ (self objectFor: elementName ifAbsent: absentBlock) asTDObjectNode: parentNode topez: topez aspect: #'view'