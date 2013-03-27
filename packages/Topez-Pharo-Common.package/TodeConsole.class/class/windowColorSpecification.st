window color
windowColorSpecification
  "Answer a WindowColorSpec object that declares my preference"

  | windowColorSpec |
  windowColorSpec := Smalltalk
    at: #'WindowColorSpec'
    ifAbsent: [ ^ self error: 'this image does not support WindowColorSpec' ].
  ^ windowColorSpec
    classSymbol: self name
    wording: 'Tode Console'
    brightColor: Color lightGray lighter paler
    pastelColor: Color lightGray lighter lighter paler paler
    helpMessage:
      'Tode Console window for running remote GemStone/S tODE session'