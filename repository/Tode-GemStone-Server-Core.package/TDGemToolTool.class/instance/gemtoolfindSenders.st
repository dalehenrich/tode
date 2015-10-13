find
gemtoolfindSenders
  | browseTool block selector |
  browseTool := self topez toolInstanceFor: 'browse'.
  selector := (GsTextInteraction prompt: 'Enter Selector:' template: '') signal.
  selector ifNil: [ ^ false ].
  block := [ browseTool findSender: selector ].
  browseTool
    browseMethodsBlock: block
    label: 'Find sender ' , selector printString.
  ^ true