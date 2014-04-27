cls
clsdefinition
  "
  cls definition ( <class-name> | @<class-path> )...
"

  | definitions definition |
  definitions := Set new.
  self getSubcommandOptsMixedLongShort: {}.
  subArguments isEmpty
    ifTrue: [ definition := Class template: 'Category' definitions add: definition ].
  subArguments
    do: [ :clsRef | 
      | theClass |
      theClass := self resolveClassReference: clsRef.
      definition := self clsdefinition: theClass.
      definitions add: definition.
      theClass
        editUsing:
          ((TDEditorSpec topez: self topez editorAspect: #'classDefinition')
            windowLocation: #'method';
            windowLabel:
                'Class Definition for ' , theClass name asString yourself) ].
  ^ definitions