actions
loadProjectUsing: aProjectTool
  self isValid
    ifFalse: [ self error: 'Cannot load an invalid project entry' ].
  ^ super loadProjectUsing: aProjectTool