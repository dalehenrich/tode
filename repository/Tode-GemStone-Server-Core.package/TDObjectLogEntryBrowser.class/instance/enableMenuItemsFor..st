tools
enableMenuItemsFor: objectLogEntry
  | registration enabled disabled enable |
  enabled := {}.
  disabled := {#'continuation'}.
  enable := [ :symbol | 
  enabled add: symbol.
  disabled remove: symbol ].
  objectLogEntry hasContinuation
    ifTrue: [ enable value: #'continuation' ].
  ^ STON
    toString:
      {#'setMenuCategories:'.
      enabled.
      #'clearMenuCategories:'.
      disabled}