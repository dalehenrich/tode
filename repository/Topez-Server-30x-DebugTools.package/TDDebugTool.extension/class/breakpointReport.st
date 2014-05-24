*topez-server-30x-debugtools
breakpointReport
  | rawBreakReport breakSummary |
  rawBreakReport := self gsMethodClass _breakReport: false.
  breakSummary := (rawBreakReport at: 1) lines.
  ^ (rawBreakReport at: 2)
    collect: [ :each | 
      | reportString stepPoint disabled |
      stepPoint := each at: 4.
      disabled := false.
      stepPoint < 0
        ifTrue: [ 
          disabled := true.
          stepPoint := stepPoint negated ].
      reportString := (each at: 2) name asString , '>>' , (each at: 3) asString
        , ' @' , stepPoint asString.
      disabled
        ifTrue: [ reportString := reportString , ' (disabled)' ].
      reportString ]