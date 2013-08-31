as yet unclassified
mcdirty
  "mc dirty"

  | dirty |
  dirty := MCWorkingCopy allManagers select: [ :wc | wc modified ].
  dirty := dirty sort: [ :a :b | a packageName <= b packageName ].
  dirty editUsing: (TDEditorSpec topez: topez editorAspect: #'edit').
  ^ dirty