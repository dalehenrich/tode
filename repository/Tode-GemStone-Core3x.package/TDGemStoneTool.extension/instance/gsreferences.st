*tode-gemstone-core3x
gsreferences
  "
  gs references [--max=<max-reference-paths>] <object-id>...
"

  | referencePathsForOop max inMemory objectArray |
  self
    getSubcommandOptsMixedLongShort:
      {#('max' nil #'required').
      #('inMemory' nil #'none')}.
  referencePathsForOop := Dictionary new.
  subOptions
    at: 'max'
    ifPresent: [ :arg | max := arg asNumber ]
    ifAbsent: [ max := 32 ].
  subOptions
    at: 'inMemory'
    ifPresent: [ :arg | inMemory := true ]
    ifAbsent: [ inMemory := false ].
  objectArray := {}.
  subArguments isEmpty
    ifTrue: [ 
      self
        error:
          'Missing required argument <object-id>.  See `man gs references` for details.' ].
  subArguments
    do: [ :oopArg | 
      | oop |
      oop := oopArg asNumber.
      (Object _objectForOop: oop)
        ifNil: [ referencePathsForOop at: oop put: 'oop not resolved' ]
        ifNotNil: [ :obj | objectArray add: obj ] ].
  self
    gsReferencesTo: objectArray
    into: referencePathsForOop
    inMemory: inMemory
    max: max.
  ^ referencePathsForOop