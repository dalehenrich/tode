as yet unclassified
initialize
  "self initialize"

  TDTopezServer
    registerEditorClass: TDProfMonClassEntryClientListElementBuilder
    for: TDProfMonitorEntry
    aspect: #'profMonResults'