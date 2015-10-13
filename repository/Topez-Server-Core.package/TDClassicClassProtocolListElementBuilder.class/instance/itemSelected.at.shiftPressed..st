tools
itemSelected: listElement at: index shiftPressed: shiftPressed
  | protocolDefinition |
  index ifNil: [ ^ nil ].
  protocolDefinition := listElement itemCache at: index.
  self browseSelectorListFor: protocolDefinition topez: listElement topez.
  ^ listElement objectSerializer
    toString: (self enableDisableMenuItems: protocolDefinition)