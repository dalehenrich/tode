as yet unclassified
clsaccessors: theBehavior setters: setters getters: getters argName: theArgName protocol: protocol
  <manPageApi: 'cls' description: 'create missing accessors for given bahavior.'>
  | argName newLine allVarNames varNames methods |
  argName := theArgName.
  allVarNames := theBehavior allInstVarNames collect: [ :each | each asString ].
  [ allVarNames includesValue: argName ] whileTrue: [ argName := 'z' , argName ].
  newLine := Character lf asString.
  varNames := theBehavior instVarNames.
  methods := Array new.
  varNames
    do: [ :var | 
      getters
        ifTrue: [ 
          (theBehavior includesSelector: var)
            ifFalse: [ 
              theBehavior
                compile:
                  var , newLine , newLine , '   "Return the value of the instance variable '''
                    , var , '''."' , newLine , '   ^' , var , newLine
                classified: protocol.
              methods add: (theBehavior compiledMethodAt: var) ] ].
      setters
        ifTrue: [ 
          (theBehavior includesSelector: var , $:)
            ifFalse: [ 
              theBehavior
                compile:
                  var , ': ' , argName , newLine , newLine
                    , '   "Modify the value of the instance variable ''' , var
                    , '''."' , newLine , '   ' , var , ' := ' , argName
                    , newLine
                classified: protocol.
              methods add: (theBehavior compiledMethodAt: var) ] ] ].
  ^ methods