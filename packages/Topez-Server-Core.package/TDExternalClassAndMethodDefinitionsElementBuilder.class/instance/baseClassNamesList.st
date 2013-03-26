as yet unclassified
baseClassNamesList
  | classes |
  classMap := Dictionary new.
  classes := IdentitySet new.
  self object
    do: [ :def | 
      | ar |
      ar := classMap
        at: def className
        ifAbsent: [ 
          classMap
            at: def className
            put:
              {nil.
              {}} ].
      (def isKindOf: TDMcClassDefinition)
        ifTrue: [ ar at: 1 put: def ]
        ifFalse: [ (ar at: 2) add: def ].
      classes add: def className ].
  ^ classes asArray