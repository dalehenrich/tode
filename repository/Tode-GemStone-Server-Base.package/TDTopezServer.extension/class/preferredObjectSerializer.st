*tode-gemstone-server-base
preferredObjectSerializer
  | preferredObjectSerializer |
  preferredObjectSerializer := SessionTemps current
    at: #'TDTopezServer_ObjectSerializer'
    otherwise: nil.
  preferredObjectSerializer == nil
    ifTrue: [ preferredObjectSerializer := TodeObjectSerializer preferredSerializer ].
  ^ preferredObjectSerializer