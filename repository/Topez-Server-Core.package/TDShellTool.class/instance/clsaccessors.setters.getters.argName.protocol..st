as yet unclassified
clsaccessors: theBehavior setters: setters getters: getters argName: theArgName protocol: protocol
  <manPageApi: 'cls' description: 'create missing accessors for given bahavior.'>
  | argName newLine allVarNames varNames methods method |
  argName := theArgName.
  allVarNames := theBehavior allInstVarNames collect: [ :each | each asString ].
  [ allVarNames includesValue: argName ] whileTrue: [ argName := 'z' , argName ].
  newLine := Character lf asString.
  varNames := theBehavior instVarNames.
  methods := Array new.
  varNames
    accompaniedBy: theBehavior
    do: [ :me :var | 
      getters
        ifTrue: [ 
          (me includesSelector: var)
            ifFalse: [ 
              method := me
                compileMethod:
                  var , newLine , newLine , '   "Return the value of the instance variable '''
                    , var , '''."' , newLine , '   ^' , var , newLine
                dictionaries: #()
                category: protocol
                environmentId: 0.
              methods add: method ] ].
      setters
        ifTrue: [ 
          (me includesSelector: var , $:)
            ifFalse: [ 
              method := me
                compileMethod:
                  var , ': ' , argName , newLine , newLine
                    , '   "Modify the value of the instance variable ''' , var
                    , '''."' , newLine , '   ' , var , ' := ' , argName
                    , newLine
                dictionaries: #()
                category: protocol
                environmentId: 0.
              methods add: method ] ] ].
  ^ methods