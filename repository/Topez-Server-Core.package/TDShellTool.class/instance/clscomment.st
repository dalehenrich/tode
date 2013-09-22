as yet unclassified
clscomment
  "
  cls comment <class-name>
      comment @<class-path>
"

  | clsName theClass comment |
  clsName := tokens at: 2.
  theClass := self resolveClassReference: clsName.
  comment := self clscomment: theClass.
  theClass editUsing: (TDEditorSpec topez: topez editorAspect: #'classComment').
  ^ comment