accessing
operationFrom: oneline
  | offset sha newOperation methodSource |
  offset := oneline indexOf: Character space.
  sha := oneline copyFrom: 1 to: offset - 1.
  newOperation := theOperation copy.
  [ 
  methodSource := self gitTool
    gitFileContents: self filePath
    commitish: sha
    gitRepoDirectory: self gitRepoDirectory.
  newOperation source: methodSource ]
    on: Error
    do: [ :ex | newOperation source: '[DELETED]' ].
  ^ newOperation