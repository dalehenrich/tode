menu actions
findStringNoCase: listElement selectedIndex: index
  | browseTool block substring |
  browseTool := self topez toolInstanceFor: 'browse'.
  substring := (GsTextInteraction prompt: 'Enter Substring' template: '') signal.
  block := [ browseTool findSourceExact: substring ignoreCase: true ].
  browseTool
    browseMethodsBlock: block
    label: 'Find string ' , substring printString.
  ^ true