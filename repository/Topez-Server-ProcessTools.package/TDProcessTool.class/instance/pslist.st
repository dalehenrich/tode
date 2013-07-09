as yet unclassified
pslist
  "ps list"

  | processes |
  processes := ProcessorScheduler scheduler allProcesses asArray.
  processes editUsing: (TDEditorSpec topez: topez editorAspect: #'edit').
  ^ processes