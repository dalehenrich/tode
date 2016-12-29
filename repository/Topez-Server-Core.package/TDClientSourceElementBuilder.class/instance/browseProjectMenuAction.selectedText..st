menu actions - Search
browseProjectMenuAction: sourceElement selectedText: selection
  | global |
  global := sourceElement topez applicationEnvironment
    globalNamed: selection asSymbol.
  (global isNil or: [ global isBehavior not ])
    ifTrue: [ ^ #'flash' ].
  self browseProjectMenuAction: sourceElement class: global.
  ^ true