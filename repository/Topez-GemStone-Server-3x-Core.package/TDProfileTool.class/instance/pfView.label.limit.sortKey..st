smalltalk api
pfView: aProfMon label: label limit: limit sortKey: sortKey
  "pf view"

  | profMonitorView |
  self pfStop: aProfMon.
  self pfGather: aProfMon.
  profMonitorView := TDProfMonitor new
    sortKey: sortKey;
    tallyLimit: limit;
    profMonitor: aProfMon;
    yourself.
  profMonitorView
    editUsing:
      ((TDEditorSpec topez: topez editorAspect: #'profMonResults')
        windowLabel: label;
        windowLocation: #'debugger';
        yourself).
  ^ profMonitorView