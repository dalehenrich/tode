*topez-server-24x-debugtools
_breakReport
  | rawBreakReport breakSummary breakReport reportArray |
  rawBreakReport := self gsMethodClass _breakReport: false.
  breakSummary := (rawBreakReport at: 1) lines.
  breakReport := Array new.
  reportArray := rawBreakReport at: 2.
  1 to: reportArray size by: 5 do: [ :j | 
    | stepPoint |
    stepPoint := reportArray at: j + 3.
    stepPoint negative
      ifTrue: [ stepPoint := stepPoint negated ].
    breakReport
      add:
        {(reportArray at: j).
        (reportArray at: j + 1).
        (reportArray at: j + 2).
        stepPoint.
        (reportArray at: j + 4).
        ((reportArray at: j + 3) negative)} ].
  ^ breakReport