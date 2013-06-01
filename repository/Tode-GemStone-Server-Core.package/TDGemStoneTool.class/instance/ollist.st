as yet unclassified
ollist
  "ol list [ <priority-list> ]"

  | objectLog |
  objectLog := TDObjectLog new.
  tokens size > 1
    ifTrue: [ 2 to: tokens size do: [ :index | objectLog priority: (ObjectLogEntry perform: (tokens at: index) asSymbol) ] ].
  objectLog editUsing: (TDEditorSpec topez: topez editorAspect: #'logEntries').
  ^ objectLog