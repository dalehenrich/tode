as yet unclassified
breakList: breakTokens
  "list"

  | report |
  report := self class breakpointReport.
  report editUsing: (TDEditorSpec topez: topez editorAspect: #'edit').
  ^ report