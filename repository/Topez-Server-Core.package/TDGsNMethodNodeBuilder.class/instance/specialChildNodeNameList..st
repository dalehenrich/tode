accessing
specialChildNodeNameList: parentNode
  | specials |
  specials := {'(argsAndTemps)'}.
  parentNode basicContents isMethodForBlock
    ifTrue: [ specials add: '(homeMethod)' ].
  ([ parentNode basicContents pragmas ]
    on: Error
    do: [ :ignored | #() ]) isEmpty
    ifFalse: [ specials add: '(pragmas)' ].
  ^ (super specialChildNodeNameList: parentNode) , specials
    , #('(selector)' '(source)')