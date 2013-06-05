as yet unclassified
stack
  "stack [ <offset> ]"

  | status |
  status := self topez serverStatus.
  tokens size > 1
    ifTrue: [ 
      | index |
      index := (tokens at: 2) asInteger.
      ^ status resultFromStackAt: index ].
  ^ status resultStack