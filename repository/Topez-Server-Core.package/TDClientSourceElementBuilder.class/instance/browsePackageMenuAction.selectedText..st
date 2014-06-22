menu actions - Search
browsePackageMenuAction: sourceElement selectedText: selection
  | global |
  global := GsSession currentSession symbolList objectNamed: selection asSymbol.
  (global isNil or: [ global isBehavior not ])
    ifTrue: [ ^ #'flash' ].
  self browsePackageMenuAction: sourceElement class: global.
  ^ true