menu actions
browseReferencesMenuAction: clientElement to: aVariableOrClassName inClass: aClass
  "browse references <className>"

  | findTool browseTool block |
  findTool := self findTool: clientElement.
  block := [ findTool findReferences: aVariableOrClassName inClass: aClass ].
  browseTool := self browseTool: clientElement.
  browseTool
    browseMethodsBlock: block
    label:
      'References to: ' , aVariableOrClassName , ' in ' , aClass name asString.
  ^ true