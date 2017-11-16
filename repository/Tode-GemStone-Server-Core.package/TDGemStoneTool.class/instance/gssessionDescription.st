commands
gssessionDescription
  "
  gs sessionDescription [--all]|[<session-id>]
"

  | result |
  self getSubcommandOptsMixedLongShort: {#('all' nil #'none')}.
  self subOptions
    at: 'all'
    ifPresent: [ :ignored | 
      result := Dictionary new.
      System currentSessions
        do: [ :sessionId | result at: sessionId put: (self gsSessionDescription: sessionId) ] ]
    ifAbsent: [ 
      | sessionId |
      self subArguments size = 0
        ifTrue: [ sessionId := System session ]
        ifFalse: [ sessionId := (self subArguments at: 1) asNumber ].
      result := self gsSessionDescription: sessionId ].
  result edit: self topez.
  ^ result