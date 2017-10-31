as yet unclassified
source
  ^ self appEnv
    sourceCodeAt: selector
    for: self theBehavior
    ifAbsent: [ self error: 'Source for method: ' , self selector printString , ' not found.' ]