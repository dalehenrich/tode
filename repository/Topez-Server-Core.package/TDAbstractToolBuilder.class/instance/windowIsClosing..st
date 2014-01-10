tools
windowIsClosing: listElement
  "noop"

  parentBuilder ifNotNil: [ parentBuilder childIsClosing: self ]