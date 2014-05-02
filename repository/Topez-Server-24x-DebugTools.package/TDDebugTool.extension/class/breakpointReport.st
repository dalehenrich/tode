*topez-server-24x-debugtools
breakpointReport
  | count rawBreakReport breakSummary breakReport reportArray |
  count := 0.
  rawBreakReport := self gsMethodClass _breakReport: false.
  breakSummary := (rawBreakReport at: 1) lines.
  breakReport := Array new.
  reportArray := rawBreakReport at: 2.
  1 to: reportArray size by: 5 do: [ :j | 
    | reportString stepPoint |
    count := count + 1.
    stepPoint := reportArray at: j + 3.
    stepPoint negative
      ifTrue: [ stepPoint := stepPoint negated ].
    reportString := (reportArray at: j + 1) name asString , '>>'
      , (reportArray at: j + 2) asString , ' @' , stepPoint asString.
    (reportArray at: j + 3) negative
      ifTrue: [ reportString := reportString , ' (disabled)' ].
    breakReport add: reportString ].
  ^ breakReport