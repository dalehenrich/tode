commands
editObjects: contextObjects
  ^ self
    editObjects: contextObjects
    builderAspect: #'view'
    editorAspect: #'edit'