project list
fieldThree
  self isValid
    ifFalse: [ ^ '(likely an issue with project entry repository)' ].
  ^ super fieldThree