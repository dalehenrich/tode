accessing
operationFrom: oneline
  | offset sha newOperation methodSource |
  offset := oneline indexOf: Character space.
  sha := oneline copyFrom: 1 to: offset - 1.
  newOperation := theOperation copy.
  methodSource := self gitTool
    gitFileContents: self filePath
    commitish: sha
    gitRepoDirectory: self gitRepoDirectory.
  (methodSource beginsWith: 'fatal:')
    ifTrue: [ newOperation local: '[DELETED]' ]
    ifFalse: [ newOperation local: methodSource ].
  ^ newOperation