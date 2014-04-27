cls
clscomment
  <manPage: 'cls' sub: 'comment' synopsis: '
  cls comment <class-name>
      comment @<class-path>
' description: 'Bring up class comment editor'>
  | clsName theClass comment |
  clsName := tokens at: 2.
  theClass := self resolveClassReference: clsName.
  comment := self clscomment: theClass.
  theClass editUsing: (TDEditorSpec topez: topez editorAspect: #'classComment').
  ^ comment