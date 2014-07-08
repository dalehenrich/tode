as yet unclassified
enableDisableMenuItems: aTDDefinition
  | enabled disabled enable |
  enabled := {}.
  disabled := {#'forClass'.
  #'hasClass'.
  #'testClass'}.
  enable := [ :symbol | 
  enabled add: symbol.
  disabled remove: symbol ].
  aTDDefinition hasClassInImage
    ifTrue: [ 
      enable value: #'hasClass'.
      (aTDDefinition theClass inheritsFrom: TestCase)
        ifTrue: [ enable value: #'testClass' ] ].
  aTDDefinition isClassInImage
    ifTrue: [ enable value: #'forClass' ].
  ^ {#'setMenuCategories:'.
  enabled.
  #'clearMenuCategories:'.
  disabled}