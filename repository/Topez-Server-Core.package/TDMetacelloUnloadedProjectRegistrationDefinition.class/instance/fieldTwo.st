project list
fieldTwo
  self isValid
    ifFalse: [ ^ 'INVALID project entry' ].
  ^ super fieldTwo