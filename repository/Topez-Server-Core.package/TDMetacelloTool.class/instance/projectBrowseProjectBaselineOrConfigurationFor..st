project api
projectBrowseProjectBaselineOrConfigurationFor: registration
  | cls clsName |
  clsName := registration isConfigurationBased
    ifTrue: [ registration configurationClassName ]
    ifFalse: [ registration baselineClassName ].
  cls := Smalltalk
    at: clsName
    ifAbsent: [ 
      self projectGetFor: registration.
      Smalltalk at: clsName ].
  self browseTool
    browseClassHierarchy: cls
    label: 'Hierarchy of ' , cls name asString.
  ^ cls