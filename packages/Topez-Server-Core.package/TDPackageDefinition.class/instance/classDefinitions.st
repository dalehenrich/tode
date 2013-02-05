as yet unclassified
classDefinitions
  | defs wc extensionClassNames packageInfo |
  wc := self workingCopy.
  wc ifNil: [ ^ #() ].
  packageInfo := wc packageInfo.
  defs := packageInfo classes collect: [ :cl | TDClassDefinition className: cl name ].
  extensionClassNames := Dictionary new.
  packageInfo extensionMethods
    do: [ :methodRef | 
      | extensionClassName classDef methodDef mDefs |
      extensionClassName := methodRef classSymbol.
      classDef := extensionClassNames
        at: extensionClassName
        ifAbsent: [ 
          classDef := TDExtensionClassDefinition className: extensionClassName.
          defs add: classDef.
          extensionClassNames at: extensionClassName put: classDef ].
      methodDef := TDMethodDefinition className: extensionClassName selector: methodRef selector.
      mDefs := methodRef classIsMeta
        ifTrue: [ classDef classMethods ]
        ifFalse: [ classDef instanceMethods ].
      mDefs add: methodRef ].
  ^ defs