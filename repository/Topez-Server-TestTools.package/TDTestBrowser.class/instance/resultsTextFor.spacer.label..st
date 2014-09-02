private
resultsTextFor: results spacer: spacer label: label
  | string |
  string := spacer , (results size printString , ' ' , label).
  results size = 0
    ifTrue: [ ^ string ].
  ^ Text string: string attributes: {(TextColor red)}