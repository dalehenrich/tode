tools
enableDisableMenuItems: mergeOperation
  | enabled disabled enable |
  enabled := {}.
  disabled := {#'stOperation'.
  #'stMethodOperation'}.
  enable := [ :symbol | 
  enabled add: symbol.
  disabled remove: symbol ].
  mergeOperation hasSmalltalkDefinition
    ifTrue: [ 
      enable value: #'stOperation'.
      mergeOperation hasSmalltalkMethodDefinition
        ifTrue: [ enable value: #'stMethodOperation' ] ].
  ^ STON
    toString:
      {#'setMenuCategories:'.
      enabled.
      #'clearMenuCategories:'.
      disabled}