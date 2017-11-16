menu actions - Search
browsePackageMenuAction: sourceElement selectedText: selection
  | global |
  global := sourceElement topez applicationEnvironment
    globalNamed: selection asSymbol.
  (global isNil or: [ global isBehavior not ])
    ifTrue: [ ^ #'flash' ].
  self browsePackageMenuAction: sourceElement class: global.
  ^ true