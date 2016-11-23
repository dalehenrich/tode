accessing
specialChildNodeNameList: parentNode
  | specials |
  specials := {}.
  parentNode basicContents isMethodForBlock
    ifTrue: [ specials add: '(homeMethod)' ].
  parentNode basicContents pragmas isEmpty
    ifFalse: [ specials add: '(pragmas)' ].
  ^ (super specialChildNodeNameList: parentNode) , specials
    , #('(selector)' '(source)')