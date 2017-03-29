*tode-gemstone-core2x-Accessing
_definitionInContext: aUserProfile withConstraints: withConstraintsBool
  "Returns a description of the receiver using object names taken from the given
 UserProfile."

  | result newByteSubclass anArray lfsp firstElement poolDicts civs supercls aSize |
  supercls := self superClass.
  result := String new.
  result
    addAll:
      (supercls == nil
        ifTrue: [ 'nil' ]
        ifFalse: [ supercls name ]).
  newByteSubclass := false.
  (lfsp := Character lf asString) addAll: '  '.
  (self isBytes and: [ supercls isBytes not ])
    ifTrue: [ 
      result
        addAll: ' byteSubclass: ''';
        addAll: name;
        addLast: $'.
      newByteSubclass := true ]
    ifFalse: [ 
      (self isIndexable and: [ supercls isIndexable not ])
        ifTrue: [ 
          result
            addAll: ' indexableSubclass: ''';
            addAll: name;
            addLast: $' ]
        ifFalse: [ 
          result
            addAll: ' subclass: ''';
            addAll: name;
            addLast: $' ] ].	" instVarNames: #( <list of strings> ) "
  newByteSubclass
    ifFalse: [ 
      result
        addAll: lfsp;
        addAll: 'instVarNames: #(';
        addAll: (self _instVarNamesWithSeparator: lfsp , '                 ');
        add: $) ].	" classVars: #( <list of strings> ) "
  result
    addAll: lfsp;
    addLast: 'classVars: #('.
  self _sortedClassVarNames
    accompaniedBy: result
    do: [ :res :aKey | 
      res addLast: $ .
      (aKey includesValue: $')
        ifTrue: [ res addAll: aKey _asSource ]
        ifFalse: [ res addAll: aKey ] ].
  result addLast: $).	" classInstVars: #( <list of strings> ) "
  result
    addAll: lfsp;
    addLast: 'classInstVars: #('.
  civs := self class allInstVarNames.
  civs removeFrom: 1 to: self class superClass instSize.
  civs
    accompaniedBy: result
    do: [ :res :civName | 
      res addLast: $ .
      (civName includesValue: $')
        ifTrue: [ res addAll: civName _asSource ]
        ifFalse: [ res addAll: civName ] ].
  result addLast: $).	" poolDictionaries: { <list of dictionary names> } "
  result
    addAll: lfsp;
    addAll: 'poolDictionaries: '.
  (poolDicts := self sharedPools) size > 0
    ifTrue: [ 
      result addAll: '{ '.
      firstElement := true.
      poolDicts
        do: [ :each | 
          firstElement
            ifFalse: [ result add: ' . ' ].
          anArray := aUserProfile dictionariesAndSymbolsOf: each.
          (aSize := anArray size) == 0
            ifTrue: [ result add: '"(not named)"' ]
            ifFalse: [ 
              aSize = 1
                ifTrue: [ result add: ((anArray at: 1) at: 2) ]
                ifFalse: [ result add: '"(multiple names)"' ] ].
          firstElement := false ].
      result add: ' }' ]
    ifFalse: [ result add: '#()' ].	" inDictionary: <name of containing dictionary> "
  result
    addAll: lfsp;
    addAll: 'inDictionary: ';
    addAll: (self _dictionaryNameForFileout: aUserProfile).
  withConstraintsBool
    ifTrue: [ 
      (newByteSubclass not and: [ self _hasConstraints ])
        ifTrue: [ 
          result
            add: self _definitionOfConstraints;
            lf ] ].	"options:"
  result
    add: lfsp;
    add: self _optionsForDefinition.
  result add: Character lf.
  ^ result