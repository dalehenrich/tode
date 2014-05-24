*topez-server-30x-core
referencesToLiteral: aLiteral in: aclassSet
  "Returns an Array of two Arrays.  The first subarray contains GsMethods
 that reference given literal.  The second subarray contains indexes where the
 first reference to the literal occurs within the sourceString of the method."

  | result resulti cset cls methsSet |
  methsSet := IdentitySet new.
  result := {}.
  resulti := {}.
  cset := self sortClasses: aclassSet.
  1 to: cset size do: [ :i | 
    cls := cset at: i.
    2
      timesRepeat: [ 
        | mDict |
        mDict := cls _fullMethodDictEnv0.
        mDict
          valuesDo: [ :method | 
            | found |
            found := false.
            (method _literalsIncludesSymbol: aLiteral value: nil)
              ifTrue: [ found := true ]
              ifFalse: [ 
                (method literals asArray refersToLiteral: aLiteral)
                  ifTrue: [ found := true ]
                  ifFalse: [ 
                    (method pragmas asArray refersToLiteral: aLiteral)
                      ifTrue: [ found := true ] ] ].
            found
              ifTrue: [ 
                (methsSet _addIfAbsent: method)
                  ifTrue: [ 
                    result add: method.
                    resulti
                      add:
                        (method sourceString findString: aLiteral asString startingAt: 1) ] ] ].
        cls := cls class ] ].
  ^ {result.
  resulti}