menu actions - Search
browseProjectMenuAction: sourceElement selectedText: selection
  | global |
  global := GsSession currentSession symbolList objectNamed: selection asSymbol.
  (global isNil or: [ global isBehavior not ])
    ifTrue: [ ^ #'flash' ].
  self browseProjectMenuAction: sourceElement class: global.
  ^ true