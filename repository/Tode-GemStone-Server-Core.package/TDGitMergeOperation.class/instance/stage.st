accessing
stage
  stage ifNil: [ stage := self calculateStage ].
  ^ stage