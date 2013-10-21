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
        ifTrue: [ 
          defs
            add:
              (TDClassDefinition new
                username: self username;
                className: glob name;
                yourself) ] ]
        on: SecurityError
        do: [ :ex | self halt ] ].
  ^ defs