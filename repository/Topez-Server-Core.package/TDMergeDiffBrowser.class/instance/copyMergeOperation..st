private
copyMergeOperation: mergeOperation
  | copiedOperation filePath |
  copiedOperation := mergeOperation copy.
  filePath := (GsTextInteraction
    prompt: 'Enter new file path'
    template: copiedOperation filePath) signal.
  filePath
    ifNil: [ 
      "abort operation"
      ^ nil ].
  copiedOperation filePath: filePath.
  (#(#'added' #'modified' #'deleted') includes: copiedOperation stage)
    ifFalse: [ copiedOperation resolved: false ].
  copiedOperation tag: 'copied'.
  ^ copiedOperation