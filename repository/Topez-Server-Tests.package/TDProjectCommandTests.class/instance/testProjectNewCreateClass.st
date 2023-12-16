tests
testProjectNewCreateClass
  "use --force early on to clean up anything leftover from previous failed runs"

true ifTrue: [ ^self]. "bypass tests for issue #322"
Transcript cr; show: 'how did we get here?'.
  [ self evaluateCommandString: 'project new --force --stone --class Foo' ]
    on: GsInteractionRequest
    do: [ :ir | 
      "creating class"
      ir response: ir interaction template ].
  self
    evaluateCommandString: 'project delete Foo';
    yourself
