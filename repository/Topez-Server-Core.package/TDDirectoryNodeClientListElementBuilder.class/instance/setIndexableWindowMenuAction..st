menu actions
setIndexableWindowMenuAction: listElement
  | newDefault |
  newDefault := (GsTextInteraction
    prompt: 'Enter new indexable window size'
    template: TDObjectNodeBuilder defaultIndexableWindowSize printString) signal.
  TDObjectNodeBuilder defaultIndexableWindowSize: newDefault asNumber.
  ^ #'refresh'