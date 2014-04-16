browse
browseclass
  "
  browse class [--hier] <class-name-pattern>...
  browse class [--hier] --exact <class-name>...
  browse class -full <class-name>
  browse class [--hier] [--user=<user-name>] --symbolDict <symbol-dictionary-name>
  browse class [--hier] --category <category-name-pattern>...
  browse class [--hier] --exact --category <category-name>...
"

  | list label pattern baseLabel |
  self
    getSubcommandOptsMixedLongShort:
      {#('category' nil #'none').
      #('exact' nil #'none').
      #('symbolDict' nil #'none').
      #('full' nil #'none').
      #('hier' nil #'none').
      #('user' nil #'required')}.
  list := Set new.
  pattern := ''.
  subOptions
    at: 'full'
    ifPresent: [ :ignored | 
      | cls clsNamePattern |
      subArguments size > 1
        ifTrue: [ ^ TodeCommandError signal: 'Only one argument allowed when using --full option' ].
      clsNamePattern := subArguments at: 1.
      cls := Smalltalk
        at: clsNamePattern
        ifAbsent: [ ^ self browseClasses: {} label: 'No class matching ' , clsNamePattern ].
      ^ self browseClassHierarchy: cls label: 'Hierarchy for ' , clsNamePattern ].
  subArguments
    do: [ :clsNamePattern | 
      subOptions
        at: 'symbolDict'
        ifPresent: [ :ignored | 
          | username |
          baseLabel := 'Classes in symbol dictionary'.
          subOptions at: 'user' ifPresent: [ :user | username := user ].
          list
            addAll:
              (self findClassDefsInSymbolDictionary: clsNamePattern username: username) ]
        ifAbsent: [ 
          subOptions
            at: 'category'
            ifPresent: [ :ignored | 
              baseLabel := 'Classes in category'.
              subOptions
                at: 'exact'
                ifPresent: [ :ignored | list addAll: (self findCategoryClassDefinitionsExact: clsNamePattern) ]
                ifAbsent: [ list addAll: (self findCategoryClassDefinitions: clsNamePattern) ] ]
            ifAbsent: [ 
              baseLabel := 'Classes matching'.
              subOptions
                at: 'exact'
                ifPresent: [ :ignored | list addAll: (self findClassExact: clsNamePattern) ]
                ifAbsent: [ list addAll: (self findClass: clsNamePattern) ] ] ].
      pattern := pattern , ' ' , clsNamePattern ].
  label := baseLabel , pattern.
  subOptions
    at: 'hier'
    ifPresent: [ :ignored | 
      | classNames |
      classNames := list collect: [ :cls | cls className asString ].
      list := self findClassHierarchy: classNames.
      label := label , ' (hierarchy)' ].
  ^ self browseClasses: list label: label