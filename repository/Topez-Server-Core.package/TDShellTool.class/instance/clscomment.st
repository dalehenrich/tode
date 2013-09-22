as yet unclassified
clscomment
  "
  cls comment <class-name>
      comment @<class-path>
"

  | clsName comment |
  clsName := tokens at: 2.
  (clsName beginsWith: '@')
    ifTrue: [ 
      | oldClass |
      oldClass := self resolveAtPathReference: clsName.
      clsName := oldClass name asString ].
  comment := self clscomment: clsName.
  comment editUsing: (TDEditorSpec topez: topez editorAspect: #'edit').
  ^ comment