cls
clscreate
  "
  cls create <new-class-name> <superclass-name> <class-category>
"

  | superClass superClsName newName category |
  self getSubcommandOptsMixedLongShort: {}.
  newName := subArguments
    at: 1
    ifAbsent: [ 
      self
        error:
          'Missing required argument <new-class-name>. See `man cls create` for details.' ].
  superClsName := subArguments
    at: 2
    ifAbsent: [ 
      self
        error:
          'Missing required argument <superclass-name>. See `man cls create` for details.' ].
  superClass := Smalltalk classNamed: superClsName.
  superClass
    ifNil: [ self error: 'Class named ' , superClsName printString , ' not found.' ].
  category := subArguments
    at: 3
    ifAbsent: [ 
      self
        error:
          'Missing required argument <class-category>. See `man cls create` for details.' ].
  ^ self clscreate: newName subclassOf: superClass category: category