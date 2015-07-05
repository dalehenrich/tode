as yet unclassified
gsreferences
  "
  gs references [--max=<max-reference-paths>] <object-id>...
"

  | referencePathsForOop max |
  self getSubcommandOptsMixedLongShort: {#('max' nil #'required')}.
  referencePathsForOop := Dictionary new.
  subOptions
    at: 'max'
    ifPresent: [ :arg | max := arg asNumber ]
    ifAbsent: [ max := 32 ].
  subArguments
    do: [ :oopArg | 
      | oop |
      oop := oopArg asNumber.
      (Object _objectForOop: oop)
        ifNil: [ referencePathsForOop at: oop put: 'oop not resolved' ]
        ifNotNil: [ :obj | 
          | refs |
          System abort.
          refs := SystemRepository
            findAllReferencePathsToObject: obj
            maxPaths: max.
          referencePathsForOop at: obj put: refs ] ].
  ^ referencePathsForOop