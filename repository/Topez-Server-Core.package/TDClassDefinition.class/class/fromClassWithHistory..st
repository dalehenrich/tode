instance creation
fromClassWithHistory: aClass
  | ch |
  ch := aClass classHistory.
  ^ (ch isNil or: [ ch current == aClass ])
    ifTrue: [ (TDClassDefinition className: aClass name) yourself ]
    ifFalse: [ (TDClassHistoryDefinition fromClass: aClass) yourself ]