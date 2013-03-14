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
  objectLog
    edit: nil
    topez: topez
    aspect: #'browse'
    windowName: nil
    windowId: nil
    windowLocation: nil.
  ^ objectLog