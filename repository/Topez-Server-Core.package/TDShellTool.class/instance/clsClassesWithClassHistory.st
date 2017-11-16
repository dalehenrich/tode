cls
clsClassesWithClassHistory
  | classes symbolList |
  symbolList := self applicationEnvironment methodCompilationSymbolList.
  classes := IdentitySet new.
  symbolList
    do: [ :symbolDict | 
      symbolDict
        do: [ :eachGlobal | 
          (eachGlobal isClass and: [ eachGlobal classHistory size > 1 ])
            ifTrue: [ classes addAll: eachGlobal classHistory ] ] ].
  ^ classes