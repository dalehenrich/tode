tools
enableDisableMenuItems: mergeOperation
  | enabled disabled enable |
  enabled := {}.
  disabled := {#'stOperation'.
  #'stMethodOperation'}.
  self selectedOperations size <= 0
    ifTrue: [ 
      enable := [ :symbol | 
      enabled add: symbol.
      disabled remove: symbol ].
      mergeOperation hasSmalltalkDefinition
        ifTrue: [ 
          enable value: #'stOperation'.
          mergeOperation hasSmalltalkMethodDefinition
            ifTrue: [ enable value: #'stMethodOperation' ] ] ].
  ^ self objectSerializer
    toString:
      {#'setMenuCategories:'.
      enabled.
      #'clearMenuCategories:'.
      disabled}