menu actions - Search
browseCategoryMenuAction: sourceElement selectedText: selection
  | global |
  global := GsSession currentSession symbolList objectNamed: selection asSymbol.
  (global isNil or: [ global isBehavior not ])
    ifTrue: [ ^ #'flash' ].
  self browseCategoryMenuAction: sourceElement class: global.
  ^ true