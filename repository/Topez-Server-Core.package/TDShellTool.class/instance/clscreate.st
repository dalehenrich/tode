cls
clscreate
  "
  cls create <new-class-name> <superclass-name> <class-category>
"

  | superClass superClsName newName category |
  self getSubcommandOptsMixedLongShort: {}.
  newName := subArguments at: 1.
  superClsName := subArguments at: 2.
  superClass := Smalltalk classNamed: superClsName.
  superClass
    ifNil: [ self error: 'Class named ' , superClsName printString , ' not found.' ].
  category := subArguments at: 3.
  ^ self clscreate: newName subclassOf: superClass category: category