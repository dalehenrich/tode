instance creation
fromClassWithHistory: aClass
  | ch |
  ch := aClass classHistory.
  ^ (ch isNil or: [ ch current == aClass ])
    ifTrue: [ 
      | className |
      className := aClass name.
      (Smalltalk at: className) == aClass
        ifTrue: [ (TDClassDefinition className: className) yourself ]
        ifFalse: [ (TDBehaviorReferenceDefinition behavior: aClass) yourself ] ]
    ifFalse: [ 
      (ch includes: aClass)
        ifTrue: [ (TDClassHistoryDefinition fromClass: aClass) yourself ]
        ifFalse: [ (TDBehaviorReferenceDefinition behavior: aClass) yourself ] ]