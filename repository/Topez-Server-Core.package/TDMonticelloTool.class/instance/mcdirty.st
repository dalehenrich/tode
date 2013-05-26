as yet unclassified
mcdirty
  "mc dirty"

  | dirty |
  dirty := MCWorkingCopy allManagers select: [ :wc | wc modified ].
  dirty editUsing: (TDEditorSpec topez: topez).
  ^ dirty