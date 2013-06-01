as yet unclassified
olilist
  "ol ilist <priority-list>"

  | priorities objectLog |
  priorities := #(#'debug' #'error' #'fatal' #'info' #'trace' #'transcript' #'warn')
    copy.
  2 to: tokens size do: [ :index | priorities remove: (tokens at: index) asSymbol ifAbsent: [  ] ].
  objectLog := TDObjectLog new.
  priorities
    do: [ :priority | objectLog priority: (ObjectLogEntry perform: priority) ].
  objectLog editUsing: (TDEditorSpec topez: topez editorAspect: #'logEntries').
  ^ objectLog