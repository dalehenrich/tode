accessing
classDefinitions
  | defs symDict |
  defs := OrderedCollection new.
  symDict := self symbolDictionary.
  symDict keys
    do: [ :globalKey | 
      [ 
      | glob |
      glob := symDict at: globalKey.
      glob isBehavior
        ifTrue: [ defs add: glob asTDClassDefinition ] ]
        on: SecurityError
        do: [ :ex | self halt ] ].
  ^ defs