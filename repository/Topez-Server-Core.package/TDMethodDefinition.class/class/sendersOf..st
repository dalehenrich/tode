as yet unclassified
sendersOf: selector
  | defs |
  defs := OrderedCollection new.
  (Smalltalk systemNavigation newSendersOf: selector asSymbol)
    do: [ :gsMethod | 
      | def |
      def := self
        className: gsMethod inClass theNonMetaClass name
        isMeta: gsMethod inClass isMeta
        selector: gsMethod selector
        messagePattern: selector asString.
      defs add: def ].
  ^ defs