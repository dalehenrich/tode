as yet unclassified
enableDisableMenuItems: aTDDefinition
  | enabled disabled enable |
  enabled := {}.
  disabled := {#'forClass'.
  #'hasClass'}.
  enable := [ :symbol | 
  enabled add: symbol.
  disabled remove: symbol ].
  aTDDefinition hasClassInImage
    ifTrue: [ enable value: #'hasClass' ].
  aTDDefinition isClassInImage
    ifTrue: [ enable value: #'forClass' ].
  ^ {#'setMenuCategories:'.
  enabled.
  #'clearMenuCategories:'.
  disabled}