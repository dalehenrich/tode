cls
clsaccessors: theBehavior setters: setters getters: getters argName: theArgName protocol: protocol force: force
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
          (force or: [ (theBehavior includesSelector: var) not ])
            ifTrue: [ 
              theBehavior
                compile: var , newLine , newLine , '   ^' , var , newLine
                classified: protocol.
              methods add: (theBehavior compiledMethodAt: var) ] ].
      setters
        ifTrue: [ 
          (force or: [ (theBehavior includesSelector: var , $:) not ])
            ifTrue: [ 
              theBehavior
                compile:
                  var , ': ' , argName , newLine , newLine , '   ' , var , ' := ' , argName
                    , newLine
                classified: protocol.
              methods add: (theBehavior compiledMethodAt: var , $:) ] ] ].
  ^ methods