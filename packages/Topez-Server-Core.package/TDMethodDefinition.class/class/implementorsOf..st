as yet unclassified
implementorsOf: selector
  | defs |
  defs := Array new.
  SystemNavigation default
    allBehaviorsDo: [ :behavior | 
      (behavior includesSelector: selector)
        ifTrue: [ 
          | def |
          def := self
            className: behavior theNonMetaClass name
            isMeta: behavior isMeta
            selector: selector
            messagePattern: selector asString.
          defs add: def ] ].
  ^ defs