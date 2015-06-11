tode commands
pfreport
  "pf report"

  | limit report |
  self getSubcommandOptsMixedLongShort: {#('limit' nil #'required')}.
  subOptions
    at: 'limit'
    ifPresent: [ :arg | limit := arg asNumber ]
    ifAbsent: [ limit := self defaultTallyLimit ].
  report := self pfReport: self profMonitor tallyLimit: limit.
  report editUsing: (TDEditorSpec topez: topez editorAspect: #'edit').
  ^ self profMonitor