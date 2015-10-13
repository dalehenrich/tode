cls
clsClassesWithClassHistory
  | classes symbolList |
  symbolList := System myUserProfile symbolList.
  classes := IdentitySet new.
  symbolList
    do: [ :symbolDict | 
      symbolDict
        do: [ :eachGlobal | 
          (eachGlobal isClass and: [ eachGlobal classHistory size > 1 ])
            ifTrue: [ classes addAll: eachGlobal classHistory ] ] ].
  ^ classes