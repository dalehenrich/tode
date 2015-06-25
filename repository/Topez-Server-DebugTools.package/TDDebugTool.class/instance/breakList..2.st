as yet unclassified
breakList
  | report |
  report := self class breakpointReport.
  report editUsing: (TDEditorSpec topez: topez editorAspect: #'edit').
  ^ report