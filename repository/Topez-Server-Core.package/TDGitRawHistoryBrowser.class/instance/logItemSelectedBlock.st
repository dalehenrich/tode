accessing
logItemSelectedBlock
  logItemSelectedBlock
    ifNil: [ logItemSelectedBlock := [ :listElement :sha |  ] ].
  ^ logItemSelectedBlock