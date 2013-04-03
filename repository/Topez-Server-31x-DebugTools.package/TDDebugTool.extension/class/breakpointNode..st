*topez-server-31x-debugtools
breakpointNode: parentNode
  | node breakReport count rawBreakReport breakSummary |
  count := 0.
  rawBreakReport := self gsMethodClass _breakReport: false.
  breakSummary := (rawBreakReport at: 1) lines.
  breakReport := (rawBreakReport at: 2)
    collect: [ :each | 
      | reportString |
      count := count + 1.
      reportString := (each at: 2) name asString , '>>' , (each at: 3) asString
        , ' @' , (each at: 4) asString.
      ((breakSummary at: count) includesSubString: '(disabled)')
        ifTrue: [ 
          "horrible hack, sorry"
          reportString := reportString , ' (disabled)' ].
      reportString ].
  node := TDObjectNode new
    name: 'breakpoints';
    parent: parentNode;
    readMe: self readMeBreakpoint;
    basicContents: breakReport;
    listBlock: [ :theNode | 
          | report |
          report := theNode basicContents.
          (1 to: report size) collect: [ :each | each asString ] ];
    elementBlock: [ :theNode :elementName :absentBlock | 
          | report |
          elementName isAllDigits
            ifFalse: [ absentBlock value ].
          report := theNode basicContents.
          ((report at: elementName asNumber)
            asTDObjectNode: theNode
            topez: theNode topez
            aspect: #'view')
            name: elementName;
            yourself ];
    yourself.
  ^ node