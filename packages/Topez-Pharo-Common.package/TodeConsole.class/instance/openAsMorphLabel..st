initialize-release
openAsMorphLabel: labelString
  "Build a morph viewing this stream"

  | window textMorph |
  window := (TZSystemWindow labelled: labelString) model: self.
  textMorph := TodeConsoleWindowMorph
    on: self
    text: nil
    accept: nil
    readSelection: nil
    menu: nil.
  textMorph acceptOnCR: true.
  window addMorph: textMorph frame: (0 @ 0 corner: 1 @ 1).
  self prompt.
  false
    ifTrue: [ 
      labelString ifNotNil: [ self labelStringBlock: [ labelString ] ].
      self changed: #'relabel' ].
  ^ window
    openInWorld;
    bounds: (self cliShell topezClientClass bounds at: #'evaluator');
    yourself