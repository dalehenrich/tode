menu actions - Search
browseItFullMenuAction: sourceElement selectedText: selection
  "browse hierarchy <selection>"

  | global |
  global := GsSession currentSession symbolList objectNamed: selection asSymbol.
  (global isNil or: [ global isBehavior not ])
    ifTrue: [ ^ #'flash' ].
  self browseFullClassMenuAction: sourceElement class: global.
  ^ true