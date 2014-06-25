as yet unclassified
enableDisableMenuItems: anObject
  | enabled disabled enable |
  enabled := {}.
  disabled := {#'forClass'.
  #'hasClass'}.
  enable := [ :symbol | 
  enabled add: symbol.
  disabled remove: symbol ].
  enable value: #'hasClass'.
  anObject isBehavior
    ifTrue: [ enable value: #'forClass' ].
  ^ {#'setMenuCategories:'.
  enabled.
  #'clearMenuCategories:'.
  disabled}