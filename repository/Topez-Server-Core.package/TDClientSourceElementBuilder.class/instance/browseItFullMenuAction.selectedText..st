menu actions - Search
browseItFullMenuAction: sourceElement selectedText: selection
  "browse hierarchy <selection>"

  | global |
  global := sourceElement topez applicationEnvironment
    globalNamed: selection asSymbol.
  (global isNil or: [ global isBehavior not ])
    ifTrue: [ ^ #'flash' ].
  self browseFullClassMenuAction: sourceElement class: global.
  ^ true