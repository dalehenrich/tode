menu actions
findStringCaseSensitive: listElement selectedIndex: index
  | browseTool block substring |
  browseTool := self topez toolInstanceFor: 'browse'.
  substring := (GsTextInteraction prompt: 'Enter Substring' template: '') signal.
  block := [ browseTool findSourceExact: substring ignoreCase: false ].
  browseTool
    browseMethodsBlock: block
    label: 'Find string ' , substring printString.
  ^ true