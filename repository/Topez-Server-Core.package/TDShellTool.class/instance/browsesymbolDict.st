browse
browsesymbolDict
  "
  browse symbolDict [--hier] [--user=<user-id>] <symbol-dictionary-name>
  browse symbolDict [--hier] --user=<user-id>
  browse symbolDict --list [--user=<user-id>] 
  browse symbolDict --globals [--user=<user-id>] <symbol-dictionary-name>
"

  | list label pattern baseLabel username symbolList |
  self
    getSubcommandOptsMixedLongShort:
      {#('hier' nil #'none').
      #('list' nil #'none').
      #('globals' nil #'none').
      #('user' nil #'required')}.
  list := Set new.
  pattern := ''.
  baseLabel := 'Classes in symbol dictionary'.
  subOptions
    at: 'user'
    ifPresent: [ :user | 
      username := user.
      symbolList := (AllUsers userWithId: username) symbolList ]
    ifAbsent: [ symbolList := GsCurrentSession currentSession symbolList ].
  subArguments isEmpty
    ifTrue: [ 
      subOptions
        at: 'list'
        ifPresent: [ :ignored | 
          list := self filterBrowseList: symbolList.
          ^ list asArray inspect ]
        ifAbsent: [ 
          baseLabel := 'Classes for user ' , username.
          symbolList
            do: [ :dict | 
              dict
                associationsDo: [ :assoc | 
                  assoc value isBehavior
                    ifTrue: [ list add: assoc value asTDClassDefinition ] ] ] ] ].
  subArguments
    do: [ :clsNamePattern | 
      subOptions
        at: 'globals'
        ifPresent: [ :ignored | 
          | symDict |
          symDict := symbolList
            detect: [ :dict | dict name asString = clsNamePattern ]
            ifNone: [ ^ #() inspect ].
          symDict associations
            do: [ :assoc | 
              (assoc value isBehavior not and: [ assoc value ~~ symDict ])
                ifTrue: [ list add: assoc ] ].
          list := self filterBrowseList: list.
          list := list asArray sorted: [ :a :b | a key <= b key ].
          ^ list inspect ]
        ifAbsent: [ 
          list
            addAll:
              (self findClassDefsInSymbolDictionary: clsNamePattern username: username) ].
      pattern := pattern , ' ' , clsNamePattern ].
  label := baseLabel , pattern.
  subOptions
    at: 'hier'
    ifPresent: [ :ignored | 
      | classNames |
      classNames := list collect: [ :cls | cls className asString ].
      list := self findClassHierarchy: classNames ].
  list := self filterBrowseList: list.
  ^ self browseClasses: list label: label