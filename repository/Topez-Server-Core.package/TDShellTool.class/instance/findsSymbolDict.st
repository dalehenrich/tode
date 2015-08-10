browse
findsSymbolDict
  "
  browse|find symbolDict [--hier] [--user=<user-id>] <symbol-dictionary-name>
  browse|find symbolDict [--hier] --user=<user-id>
"

  | username symbolList list |
  subOptions
    at: 'user'
    ifPresent: [ :user | 
      username := user.
      symbolList := (AllUsers userWithId: username) symbolList ]
    ifAbsent: [ 
      | session |
      session := GsCurrentSession currentSession.
      username := session userProfile userId.
      symbolList := session symbolList ].
  list := Set new.
  subArguments isEmpty
    ifTrue: [ 
      symbolList
        do: [ :dict | 
          dict
            associationsDo: [ :assoc | 
              assoc value isBehavior
                ifTrue: [ list add: assoc value asTDClassDefinition ] ] ] ].
  subArguments
    do: [ :arg | list addAll: (self findClassDefsInSymbolDictionary: arg username: username) ].
  subOptions
    at: 'hier'
    ifPresent: [ :ignored | 
      | classNames |
      classNames := list collect: [ :cls | cls className asString ].
      list := self findClassHierarchy: classNames ].
  ^ self filterSelectList: list