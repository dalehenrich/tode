cls
clsdefinition
  "
  cls definition <class-name>
      definition @<class-path>
"

  | clsName theClass definition |
  clsName := tokens at: 2.
  theClass := self resolveClassReference: clsName.
  definition := self clsdefinition: theClass.
  theClass
    editUsing:
      ((TDEditorSpec topez: self topez editorAspect: #'classDefinition')
        windowLocation: #'method';
        yourself).
  ^ definition