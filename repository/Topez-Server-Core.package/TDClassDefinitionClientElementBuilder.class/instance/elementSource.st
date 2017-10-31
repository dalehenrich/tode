as yet unclassified
elementSource
  (self object isKindOf: TDDefinition)
    ifTrue: [ 
      | def |
      def := self object.
      ^ def appEnv definitionFromClassDefinition: def ].
  ^ self theClass definition