as yet unclassified
pfview: label
  "pf view"

  | profMon profMonitorView |
  self pfstop.
  profMon := self profMonitor.
  profMon results ifNil: [ profMon gatherResults ].
  profMonitorView := TDProfMonitor new
    profMon: profMon;
    yourself.
  profMon removeResults.
  profMonitorView
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'profMonResults')
        windowLabel: label;
        windowLocation: #'debugger';
        yourself).
  ^ profMonitorView