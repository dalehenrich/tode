find
findReferences: variableOrGlobalNameOrPathRef inClass: cls searchScriptRoot: path
  "find [--scriptPath=<tode-path>] references <variableOrGlobalNameOrPathRef>"

  | rootSearchNode literal leafNodes |
  path
    ifNil: [ ^ self findReferences: variableOrGlobalNameOrPathRef inClass: cls ].
  literal := (variableOrGlobalNameOrPathRef beginsWith: '@')
    ifTrue: [ self resolveAtPathReference: variableOrGlobalNameOrPathRef ]
    ifFalse: [ Smalltalk at: variableOrGlobalNameOrPathRef asSymbol ].
  rootSearchNode := self topez lookup: path.
  leafNodes := IdentitySet new.
  TDExecutableStScriptVisitor
    topez: self topez
    visitNode: rootSearchNode
    andDo: [ :leafNode | 
      [ 
      | gsMethod srcOffset |
      gsMethod := leafNode method.
      (gsMethod perform: #'_literalsIncludesValue:' with: literal)
        ifTrue: [ leafNodes add: leafNode ] ]
        on: self compilerExceptionSet
        do: [ :ex | 
          Transcript
            cr;
            show: 'Compile error processing: ' , leafNode printString ] ].
  ^ leafNodes asArray sort: [ :a :b | a printString < b printString ]