synthetic fields
instVarNameMap
  | map rawSelf |
  map := Dictionary new.
  (rawSelf := self rawSelf) ifNil: [ ^ map ].
  (Reflection classOf: rawSelf) allInstVarNames do: [ :instVarName | map
        at: '[' , instVarName asString , ']' asString
        put: (rawSelf instVarNamed: instVarName) ].
  ^ map