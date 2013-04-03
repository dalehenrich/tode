accessing
scriptActionStack
  scriptActionStack ifNil: [ scriptActionStack := OrderedCollection new ].
  ^ scriptActionStack