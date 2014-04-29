departing
configs
  "configs"

  TDConfigurationList reset.
  TDConfigurationList current
    editUsing: (TDEditorSpec topez: topez editorAspect: #'definitionList').
  ^ TDConfigurationList current