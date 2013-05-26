as yet unclassified
resolveSelector: selector
  (selector beginsWith: '#')
    ifFalse: [ ^ selector ].
  ^ selector copyFrom: 2 to: selector size