*tode-gemstone-core2x-Accessing
_dictionaryNameForFileout: aUserProfile
  | anArray |
  anArray := {aUserProfile dictionaryAndSymbolOf: self}.
  anArray size == 0
    ifTrue: [ 
      | hist j |
      hist := self classHistory.
      anArray := nil.
      j := hist size.
      [ j >= 1 ]
        whileTrue: [ 
          anArray := {aUserProfile dictionaryAndSymbolOf: (hist at: j)}.
          anArray size ~~ 0
            ifTrue: [ j := 0	"exit loop" ].
          j := j - 1 ] ].
  anArray size ~~ 0
    ifTrue: [ 
      anArray := {aUserProfile dictionaryAndSymbolOf: ((anArray at: 1) at: 1)}.
      anArray size == 0
        ifTrue: [ ^ '(dictionary not in your dictionaries)' ]
        ifFalse: [ 
          | dName |
          (dName := (anArray at: 1) at: 2) isValidIdentifier
            ifTrue: [ ^ dName ]
            ifFalse: [ 
              "this code moved from sessionmethods.topaz to here for v3.0"
              ^ ('(GsCurrentSession currentSession symbolList objectNamed: '
                , dName printString)
                add: $);
                yourself ] ] ].
  ^ 'UserGlobals'