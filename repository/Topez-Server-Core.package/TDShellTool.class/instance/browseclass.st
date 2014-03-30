as yet unclassified
browseclass
  "browse class [--hier|--full] <class-name>"

  | list label clsName |
  self
    getSubcommandOptsMixedLongShort:
      {#('full' nil #'none').
      #('hier' nil #'none').
      #('regex' $r #'none')}.
  clsName := subArguments at: 1.
  subOptions
    at: 'full'
    ifPresent: [ :ignored | 
      | cls |
      cls := Smalltalk
        at: clsName
        ifAbsent: [ ^ self browseClasses: {} label: 'No class matching ' , clsName ].
      ^ self browseClassHierarchy: cls label: 'Hierarchy for ' , clsName ].
  list := self findClass: clsName.
  label := 'Classes matching ' , clsName.
  subOptions
    at: 'hier'
    ifPresent: [ :ignored | 
      | classNames |
      classNames := list collect: [ :cls | cls className asString ].
      list := self findClassHierarchy: classNames.
      label := 'Class Hierarchy matching ' , clsName ].
  ^ self browseClasses: list label: label