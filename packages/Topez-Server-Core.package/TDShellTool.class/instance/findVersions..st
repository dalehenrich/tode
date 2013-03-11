as yet unclassified
findVersions: findTokens
  "find versions <method-spec>"

  | methodSpec selector behavior classSpec |
  methodSpec := (tokens at: 3) findTokens: '>>'.
  classSpec := (methodSpec at: 1) findTokens: ' '.
  behavior := Smalltalk at: (classSpec at: 1) asSymbol.
  classSpec size > 1
    ifTrue: [ 
      (classSpec at: 2) = 'class'
        ifFalse: [ self error: 'invalid methodSpec' ].
      behavior := behavior class ].
  selector := (methodSpec at: 2) asSymbol.
  ^ (MethodVersionHistory uniqueInstance versionsOfMethod: selector in: behavior)
    collect: [ :methodVersionRecord | TDMethodVersionDefinition new methodVersionRecord: methodVersionRecord ]