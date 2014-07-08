as yet unclassified
enableDisableMenuItems: anObject
  | enabled disabled enable |
  enabled := {}.
  disabled := {#'forClass'.
  #'hasClass'.
  #'testClass'}.
  enable := [ :symbol | 
  enabled add: symbol.
  disabled remove: symbol ].
  enable value: #'hasClass'.
  (anObject inheritsFrom: TestCase)
    ifTrue: [ enable value: #'testClass' ].
  anObject isBehavior
    ifTrue: [ enable value: #'forClass' ].
  ^ {#'setMenuCategories:'.
  enabled.
  #'clearMenuCategories:'.
  disabled}