pluggable accessing
blockBlock
  blockBlock
    ifNil: [ blockBlock := [ :aTopez :objIn :tokens :todeCommand | self topez evaluateString: self contents inContext: objIn ] ].
  ^ blockBlock