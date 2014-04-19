browse
browseclass
  "
  browse class [--exact] [--hier] <class-name-pattern>...
  browse class --full <class-name>
"

  | list label pattern baseLabel |
  self
    getSubcommandOptsMixedLongShort:
      {#('exact' nil #'none').
      #('full' nil #'none').
      #('hier' nil #'none')}.
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
  baseLabel := 'Classes matching'.
  subArguments
    do: [ :clsNamePattern | 
      subOptions
        at: 'exact'
        ifPresent: [ :ignored | list addAll: (self findClassExact: clsNamePattern) ]
        ifAbsent: [ list addAll: (self findClass: clsNamePattern) ].
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