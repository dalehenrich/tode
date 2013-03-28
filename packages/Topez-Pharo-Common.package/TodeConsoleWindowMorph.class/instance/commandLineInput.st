command input
commandLineInput
  | start stop |
  start := self positionAfterPromptString.
  stop := self text size.
  stop < start
    ifTrue: [ ^ '' ].
  ^ (self text copyFrom: start to: stop) asString