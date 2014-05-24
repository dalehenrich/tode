cls
clscomment
  "
  cls comment ( <class-name> | @<class-path> )...
"

  | comments |
  self getSubcommandOptsMixedLongShort: {}.
  comments := Set new.
  subArguments
    do: [ :clsRef | 
      | theClass comment |
      theClass := self resolveClassReference: clsRef.
      comment := self clscomment: theClass.
      comments add: comment.
      theClass
        editUsing:
          ((TDEditorSpec topez: topez editorAspect: #'classComment')
            windowLabel: 'Class Comment for ' , theClass name asString;
            yourself) ].
  ^ comments