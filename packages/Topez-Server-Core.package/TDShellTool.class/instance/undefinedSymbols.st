as yet unclassified
undefinedSymbols
  "port undefinedSymbols"

  | us undefined result |
  us := UndefinedSymbolsTest new.
  us cleanUndefinedSymbols.
  (undefined := UndefinedSymbols keys) removeAllPresent: us specialCases.
  result := Dictionary new.
  undefined
    do: [ :undef | 
      | set |
      set := UndefinedSymbols at: undef.
      ((set isKindOf: Set) and: [ set anyOne isKindOf: Association ])
        ifTrue: [ 
          | dict |
          dict := Dictionary new.
          set
            do: [ :assoc | 
              (dict at: assoc key ifAbsent: [ dict at: assoc key put: Array new ])
                add: assoc value ].
          result at: undef put: dict ]
        ifFalse: [ result at: undef put: set ] ].
  ^ result