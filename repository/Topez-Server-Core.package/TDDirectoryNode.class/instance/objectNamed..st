as yet unclassified
objectNamed: childName
  ^ (self
    childNamed: childName
    ifAbsent: [ self error: 'No object named: ' , childName printString , ' found.' ])
    dotSelfObject