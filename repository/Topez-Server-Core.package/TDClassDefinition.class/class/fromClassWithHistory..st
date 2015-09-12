instance creation
fromClassWithHistory: aClass
  | ch |
  ch := aClass classHistory.
  ^ (ch isNil or: [ ch current == aClass ])
    ifTrue: [ (TDClassDefinition className: aClass name) yourself ]
    ifFalse: [ 
      (ch includes: aClass)
        ifTrue: [ (TDClassHistoryDefinition fromClass: aClass) yourself ]
        ifFalse: [ (TDBehaviorReferenceDefinition behavior: aClass) yourself ] ]