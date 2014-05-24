as yet unclassified
classDefinitionsFor: packageInfo definitions: defs extensionDefinitions: extensionDefinitions
  packageInfo classes
    do: [ :cl | defs add: (TDClassDefinition className: cl name) ].
  packageInfo extensionMethods
    do: [ :methodRef | 
      | extensionClassName classDef methodDef mDefs |
      extensionClassName := methodRef classSymbol.
      classDef := extensionDefinitions
        at: extensionClassName
        ifAbsent: [ 
          classDef := TDExtensionClassDefinition className: extensionClassName.
          extensionDefinitions at: extensionClassName put: classDef ].
      methodDef := TDMethodDefinition
        className: extensionClassName
        isMeta: methodRef classIsMeta
        selector: methodRef selector.
      mDefs := methodDef isMeta
        ifTrue: [ classDef classMethods ]
        ifFalse: [ classDef instanceMethods ].
      mDefs add: methodDef ]