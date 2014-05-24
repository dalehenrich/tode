commands
editObjects: contextObjects builderAspect: builderAspect editorAspect: editorAspect
  contextObjects
    do: [ :contextObject | 
      contextObject
        editUsing:
          ((TDEditorSpec topez: topez editorAspect: editorAspect)
            builderAspect: builderAspect;
            yourself) ].
  ^ contextObjects