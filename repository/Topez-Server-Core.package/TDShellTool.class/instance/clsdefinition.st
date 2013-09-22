as yet unclassified
clsdefinition
  "
  cls definition <class-name>
      definition @<class-path>
"

  | clsName definition |
  clsName := tokens at: 2.
  (clsName beginsWith: '@')
    ifTrue: [ 
      | oldClass |
      oldClass := self resolveAtPathReference: clsName.
      clsName := oldClass name asString ].
  definition := self clsdefinition: clsName.
  (Smalltalk classNamed: clsName)
    editUsing:
      ((TDEditorSpec topez: self topez editorAspect: #'classDefinition')
        windowLocation: #'method';
        yourself).
  ^ definition