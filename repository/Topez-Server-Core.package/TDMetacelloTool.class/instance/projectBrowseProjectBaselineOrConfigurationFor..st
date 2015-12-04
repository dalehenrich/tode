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
      clsName := registration isConfigurationBased
        ifTrue: [ registration configurationClassName ]
        ifFalse: [ registration baselineClassName ].
      Smalltalk at: clsName ].
  (self topez toolInstanceFor: 'browse')
    browseClassHierarchy: cls
    label: 'Hierarchy of ' , cls name asString.
  ^ cls