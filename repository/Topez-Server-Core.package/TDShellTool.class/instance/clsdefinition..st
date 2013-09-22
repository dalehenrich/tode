as yet unclassified
clsdefinition: clsName
  ^ (Smalltalk classNamed: clsName)
    ifNil: [ self error: 'class ' , clsName printString , ' not found' ]
    ifNotNil: [ :cls | cls ogDefinition ]