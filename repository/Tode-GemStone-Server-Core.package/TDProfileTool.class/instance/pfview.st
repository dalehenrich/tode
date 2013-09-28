as yet unclassified
pfview
  "pf vew [<window-label>]"

  | label |
  label := 'Profile Monitor'.
  tokens size > 1
    ifTrue: [ label := tokens at: 2 ].
  ^ self pfview: label