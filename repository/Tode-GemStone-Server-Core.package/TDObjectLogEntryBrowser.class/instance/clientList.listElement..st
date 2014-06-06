tools
clientList: miniTool listElement: listElement
  | labels maxOne maxTwo maxThree objectLogList priorityLabels bold |
  theMiniTool := miniTool.
  objectLogEntries := self objectLogBlock value.
  self reversed
    ifTrue: [ objectLogEntries := objectLogEntries reversed ].
  labels := {}.
  maxOne := maxTwo := maxThree := 0.
  priorityLabels := self priorityLabels.
  bold := {(ObjectLogEntry error).
  (ObjectLogEntry fatal)}.
  objectLogEntries
    do: [ :ole | 
      | one two three |
      two := ole labelString.
      two size > 35
        ifTrue: [ two := (two copyFrom: 1 to: 35) , '...' ].
      labels
        add:
          {(one := priorityLabels at: ole priority).
          two.
          (three := ole pidString).
          (ole stampString).
          ((bold includes: ole priority)
            ifTrue: [ 
              ole hasContinuation
                ifTrue: [ 
                  {(TextEmphasis bold).
                  (TextEmphasis underlined)} ]
                ifFalse: [ {(TextEmphasis bold)} ] ]
            ifFalse: [ {(TextEmphasis normal)} ])}.
      maxOne := maxOne max: one size.
      maxTwo := maxTwo max: two size.
      maxThree := maxThree max: three size ].
  maxOne := maxOne + 2.
  maxTwo := maxTwo + 2.
  maxThree := maxThree + 2.
  objectLogList := labels
    collect: [ :ar | 
      | stream one two three four textAttributes |
      stream := WriteStream on: String new.
      one := ar at: 1.
      two := ar at: 2.
      three := ar at: 3.
      four := ar at: 4.
      textAttributes := ar at: 5.
      stream
        nextPutAll: one;
        space: maxOne - one size;
        nextPutAll: two;
        space: maxTwo - two size;
        nextPutAll: three;
        space: maxThree - three size;
        nextPutAll: four.
      Text string: stream contents attributes: textAttributes ].
  ^ objectLogList -> nil