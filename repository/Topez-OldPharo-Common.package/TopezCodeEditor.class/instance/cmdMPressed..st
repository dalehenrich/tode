accessing
cmdMPressed: aSmalltalkEditor
  | aSelector |
  aSmalltalkEditor lineSelectAndEmptyCheck: [ ^ self ].
  (aSelector := aSmalltalkEditor selectedSelector) == nil
    ifTrue: [ ^ aSmalltalkEditor morph flash ].
  (aSmalltalkEditor evaluator class commands at: 'edit')
    value: aSmalltalkEditor evaluator
    value: aSmalltalkEditor topez
    value:
      {'edit'.
      'implementors'.
      aSelector}