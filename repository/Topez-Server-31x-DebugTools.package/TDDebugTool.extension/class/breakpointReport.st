*topez-server-31x-debugtools
breakpointReport
  | count rawBreakReport breakSummary |
  count := 0.
  rawBreakReport := self gsMethodClass _breakReport: false.
  breakSummary := (rawBreakReport at: 1) lines.
  ^ (rawBreakReport at: 2)
    collect: [ :each | 
      | reportString |
      count := count + 1.
      reportString := (each at: 2) name asString , '>>' , (each at: 3) asString
        , ' @' , (each at: 4) asString.
      ((breakSummary at: count) includesSubString: '(disabled)')
        ifTrue: [ 
          "horrible hack, sorry"
          reportString := reportString , ' (disabled)' ].
      reportString ]