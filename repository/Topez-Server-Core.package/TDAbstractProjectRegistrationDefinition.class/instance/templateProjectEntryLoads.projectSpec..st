project list
templateProjectEntryLoads: anOldTDRegistrationDefinitionOrNil projectSpec: aProjectSpecOrNil
  | loads |
  loads ifNil: [ loads := {} ].
  aProjectSpecOrNil
    ifNotNil: [ aProjectSpecOrNil loads ifNotNil: [ :list | loads addAll: list ] ].
  anOldTDRegistrationDefinitionOrNil
    ifNotNil: [ 
      anOldTDRegistrationDefinitionOrNil projectSpec loads
        ifNotNil: [ :list | loads addAll: list ].
      anOldTDRegistrationDefinitionOrNil entry
        ifNotNil: [ :oldEntry | loads addAll: oldEntry loads ] ].
  loads isEmpty
    ifTrue: [ ^ #('default') ].
  loads := loads asSet asArray.
  ^ loads