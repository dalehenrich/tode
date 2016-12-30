client list element
instVarNameMap
  | map frameSelf |
  map := Dictionary new.
  (frameSelf := self frameSelf) ifNil: [ ^ map ].
  (Reflection classOf: frameSelf) allInstVarNames do: [ :instVarName | map
        at: '[' , instVarName asString , ']' asString
        put: (frameSelf instVarNamed: instVarName) ].
  ^ map