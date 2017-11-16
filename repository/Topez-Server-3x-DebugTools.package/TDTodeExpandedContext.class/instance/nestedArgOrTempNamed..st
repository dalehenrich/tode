synthetic fields
nestedArgOrTempNamed: elementName
  ^ self
    nestedArgOrTempNamed: elementName
    ifAbsent: [ self error: 'element not found: ' , elementName printString ]