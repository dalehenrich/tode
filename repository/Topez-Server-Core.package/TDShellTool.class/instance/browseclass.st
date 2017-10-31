browse
browseclass
  "
  browse class [--exact] [--hier] <class-name-pattern>...
  browse class --full <class-name>
"

  | block label pattern |
  self
    getSubcommandOptsMixedLongShort:
      {#('exact' nil #'none').
      #('full' nil #'none').
      #('hier' nil #'none')}.
  subOptions
    at: 'full'
    ifPresent: [ :ignored | 
      | cls clsNamePattern |
      subArguments size > 1
        ifTrue: [ ^ TodeCommandError signal: 'Only one argument allowed when using --full option' ].
      clsNamePattern := subArguments
        at: 1
        ifAbsent: [ 
          self
            error:
              'Missing required argument <class-name>. See `man browse class` for more details' ].
      cls := self applicationEnvironment
        globalNamed: clsNamePattern
        ifAbsent: [ ^ self browseClasses: {} label: 'No class matching ' , clsNamePattern ].
      ^ self browseClassHierarchy: cls label: 'Hierarchy for ' , clsNamePattern ].
  pattern := ''.
  subArguments do: [ :arg | pattern := pattern , ' ' , arg ].
  label := 'Classes matching' , pattern.
  block := [ self findClass ].
  ^ self browseClassesBlock: block label: label