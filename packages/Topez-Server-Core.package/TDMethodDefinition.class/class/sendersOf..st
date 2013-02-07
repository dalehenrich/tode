as yet unclassified
sendersOf: selector
  | defs |
  defs := Array new.
  (SystemNavigation default sendersOf: selector asSymbol)
    do: [ :gsMethod | 
      | def |
      def := self
        className: gsMethod inClass theNonMetaClass name
        isMeta: gsMethod inClass isMeta
        selector: selector
        messagePattern: selector asString.
      defs add: def ].
  ^ defs