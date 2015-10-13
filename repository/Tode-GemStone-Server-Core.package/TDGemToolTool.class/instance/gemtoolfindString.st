find
gemtoolfindString
  | browseTool block substring |
  browseTool := self topez toolInstanceFor: 'browse'.
  substring := (GsTextInteraction prompt: 'Enter Substring' template: '') signal.
  substring ifNil: [ ^ false ].
  block := [ browseTool findSourceExact: substring ignoreCase: true ].
  browseTool
    browseMethodsBlock: block
    label: 'Find string ' , substring printString.
  ^ true