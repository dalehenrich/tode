as yet unclassified
classDefinitions
  | defs wc packageInfo extensionDefinitions |
  wc := self workingCopy.
  wc ifNil: [ ^ #() ].
  packageInfo := wc packageInfo.
  defs := Array new.
  extensionDefinitions := Dictionary new.
  self classDefinitionsFor: packageInfo definitions: defs extensionDefinitions: extensionDefinitions.
  ^ defs