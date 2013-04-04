as yet unclassified
classDefinitions
  | defs version extensionDefinitions |
  defs := Array new.
  version := self projectSpec version.
  extensionDefinitions := Dictionary new.
  version packages
    do: [ :pkg | 
      pkg workingCopy
        ifNotNil: [ :wc | 
          | packageInfo |
          packageInfo := wc packageInfo.
          self classDefinitionsFor: packageInfo definitions: defs extensionDefinitions: extensionDefinitions ] ].
  ^ defs