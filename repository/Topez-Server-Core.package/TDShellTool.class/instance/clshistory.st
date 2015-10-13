cls
clshistory
  "
  cls history [--hier] [( <class-name> | @<class-path> )...]
"

  | block label |
  self getSubcommandOptsMixedLongShort: {#('hier' nil #'none')}.
  subOptions
    at: 'hier'
    ifPresent: [ :ignored | label := 'Class History Hierarchy for' ]
    ifAbsent: [ label := 'Class History for' ].
  subArguments isEmpty
    ifTrue: [ label := label , ' all classes' ]
    ifFalse: [ subArguments do: [ :arg | label := label , ' ' , arg ] ].
  block := [ 
  | classes classDefs |
  subArguments isEmpty
    ifTrue: [ classes := self clsClassesWithClassHistory ]
    ifFalse: [ 
      | theClass |
      classes := IdentitySet new.
      subArguments
        do: [ :clsRef | 
          theClass := self resolveClassReference: clsRef.
          classes addAll: theClass classHistory ] ].
  classes copy
    do: [ :cl | 
      subOptions
        at: 'hier'
        ifPresent: [ :ignored | classes addAll: (TDClassDefinition fullHierarchyOf: cl) ] ].
  classDefs := classes collect: [ :each | each asTDClassDefinition ].
  TDClassDefinition classHierarchyOrder: classDefs ].
  ^ self browseClassesBlock: block label: label