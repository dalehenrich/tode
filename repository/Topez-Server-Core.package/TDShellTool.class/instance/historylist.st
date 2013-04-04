as yet unclassified
historylist
  "history list [ <limit> ]"

  | history |
  history := self topez shellHistory.
  tokens size > 1
    ifTrue: [ history := history reverse copyFrom: 1 to: (tokens at: 2) asNumber ].
  history
    edit: nil
    topez: topez
    aspect: #'browse'
    windowName: nil
    windowId: nil
    windowLocation: nil.
  ^ history