accessing
evaluateTopezScript: topezScript
  "you know, you should be using #toolInstanceFor:, instead"

  | line stream result startingSize originalEvaluating |
  [ 
  startingSize := self scriptActionStack size.
  originalEvaluating := evaluatingScript.
  evaluatingScript := true.
  stream := topezScript readStream.
  TDCommandLine
    fromStream: stream
    selectLine: [ :line | 
      self accumulateScriptText
        ifTrue: [ 
          self
            accumulateText: line
            onEval: [ :res | 
              result := res.
              self objIn: result ].
          false	"do not create or evaluate command for this line" ]
        ifFalse: [ true	"create and evaluate the command for this line" ] ]
    forEachCommand: [ :command | 
      result := self evaluateTopezScriptCommand: command.
      self objIn: result ].
  evaluatingScript := originalEvaluating	"last one on the stack please turn out the lights" ]
    ifCurtailed: [ 
      | currentSize extra |
      "terminated process ... clean everything up "
      accumulateScriptText := evaluatingScript := false.
      currentSize := self scriptActionStack size.
      extra := currentSize - startingSize.
      extra > 0
        ifTrue: [ self scriptActionStack removeLast: extra ] ].
  ^ result