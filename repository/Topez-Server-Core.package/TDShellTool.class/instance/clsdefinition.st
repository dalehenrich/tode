cls
clsdefinition
  "
  cls definition [( <class-name> | @<class-path> )...]
"

  | definitions definitionSource |
  definitions := Set new.
  self getSubcommandOptsMixedLongShort: {}.
  subArguments isEmpty
    ifTrue: [ 
      definitionSource := Class template: 'class category'.
      definitions add: definitionSource.
      definitionSource
        editUsing:
          ((TDEditorSpec topez: self topez editorAspect: #'workspace')
            windowLabel: 'New Class Template')
        objectBlock: [ nil ].
      ^ definitions ].
  subArguments
    do: [ :clsRef | 
      | theClass |
      theClass := self resolveClassReference: clsRef.
      definitionSource := self clsdefinition: theClass.
      definitions add: definitionSource.
      theClass
        editUsing:
          ((TDEditorSpec topez: self topez editorAspect: #'classDefinition')
            windowLocation: #'method';
            windowLabel:
                'Class Definition for ' , theClass name asString yourself) ].
  ^ definitions