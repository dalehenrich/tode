find
gemtoolfindMethod
  | browseTool block methodPattern matches selectors selector |
  browseTool := self topez toolInstanceFor: 'browse'.
  methodPattern := (GsTextInteraction
    prompt: 'Method Name Fragment:'
    template: '') signal.
  methodPattern ifNil: [ ^ false ].
  matches := browseTool findMethodNamesMatching: methodPattern.
  selectors := (matches
    asSortedCollection: [ :match1 :match2 | match1 moreRelevantThan: match2 ])
    collect: [ :match | match name asString ].
  selectors isEmpty
    ifTrue: [ ^ false ].
  selector := (GsChoiceInteraction
    prompt: 'Choose a method'
    labels: selectors
    values: selectors) signal.
  selector ifNil: [ ^ false ].
  block := [ browseTool findMethod: selector ].
  browseTool
    browseMethodsBlock: block
    label: 'Find method ' , methodPattern printString.
  ^ true