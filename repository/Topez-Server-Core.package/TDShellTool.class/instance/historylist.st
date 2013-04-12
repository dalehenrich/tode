as yet unclassified
historylist
  "history list [ <limit> ]"

  | history |
  history := self topez shellHistory.
  tokens size > 1
    ifTrue: [ history := history reverse copyFrom: 1 to: (tokens at: 2) asNumber ].
  history editUsing: (TDEditorSpec topez: topez editorAspect: #'edit').
  ^ history