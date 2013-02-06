accessing
cmdBPressed: aSmalltalkEditor
  | aClassString |
  aSmalltalkEditor lineSelectAndEmptyCheck: [ ^ self ].
  aClassString := aSmalltalkEditor selection string copyWithoutAll: CharacterSet crlf.
  (aSmalltalkEditor evaluator class commands at: 'edit')
    value: aSmalltalkEditor evaluator
    value: aSmalltalkEditor topez
    value:
      {'edit'.
      'class'.
      aClassString}