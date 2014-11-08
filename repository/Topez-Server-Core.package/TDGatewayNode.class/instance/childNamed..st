as yet unclassified
childNamed: childName
  ^ self
    childNamed: childName
    ifAbsent: [ self error: 'No node named: ' , childName printString , ' found.' ]