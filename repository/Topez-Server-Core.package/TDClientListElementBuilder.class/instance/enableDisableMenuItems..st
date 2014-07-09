private
enableDisableMenuItems: aTDDefinition
  | enabled disabled enable |
  enabled := {}.
  disabled := {#'forClass'.
  #'hasClass'.
  #'testClass'.
  #'forMethod'.
  #'forProtocol'.
  #'forMethodOrProtocol'}.
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
  aTDDefinition isMethodInImage
    ifTrue: [ 
      enable
        value: #'forMethod';
        value: #'forMethodOrProtocol' ].
  aTDDefinition isProtocolInImage
    ifTrue: [ 
      enable
        value: #'forProtocol';
        value: #'forMethodOrProtocol' ].
  ^ {#'setMenuCategories:'.
  enabled.
  #'clearMenuCategories:'.
  disabled}