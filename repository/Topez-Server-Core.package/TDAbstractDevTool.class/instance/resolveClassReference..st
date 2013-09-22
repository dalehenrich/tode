as yet unclassified
resolveClassReference: clsName
  ^ (clsName beginsWith: '@')
    ifTrue: [ self resolveAtPathReference: clsName ]
    ifFalse: [ 
      (Smalltalk classNamed: clsName)
        ifNil: [ self error: 'class ' , clsName printString , ' not found' ]
        ifNotNil: [ :cls | cls ] ]