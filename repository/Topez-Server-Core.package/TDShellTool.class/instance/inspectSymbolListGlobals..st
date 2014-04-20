browse
inspectSymbolListGlobals: symbolList
  "
  browse symbolDict --globals [--user=<user-id>] <symbol-dictionary-name>
"

  | list l |
  list := Set new.
  subArguments
    do: [ :arg | 
      | symDict |
      symDict := symbolList
        detect: [ :dict | dict name asString = arg ]
        ifNone: [ ^ #() inspect ].
      symDict associations
        do: [ :assoc | 
          (assoc value isBehavior not and: [ assoc value ~~ symDict ])
            ifTrue: [ list add: assoc ] ] ].
  list := self filterBrowseList: list.
  list := list asArray sorted: [ :a :b | a key <= b key ].
  ^ list inspect