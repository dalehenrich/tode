*topez-server-31x-debugtools
breakpointReport
  | rawBreakReport breakSummary |
  rawBreakReport := self gsMethodClass _breakReport: false.
  breakSummary := (rawBreakReport at: 1) lines.
  ^ (rawBreakReport at: 2)
    collect: [ :each | 
      | reportString |
      reportString := (each at: 2) name asString , '>>' , (each at: 3) asString
        , ' @' , (each at: 4) asString.
      (each at: 6)
        ifTrue: [ reportString := reportString , ' (disabled)' ].
      reportString ]