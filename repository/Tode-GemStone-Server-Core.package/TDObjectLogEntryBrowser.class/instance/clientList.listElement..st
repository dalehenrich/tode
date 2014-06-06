tools
clientList: miniTool listElement: listElement
  | labels maxOne maxTwo objectLogList priorityLabels bold |
  theMiniTool := miniTool.
  objectLogEntries := self objectLogBlock value.
  self reversed
    ifTrue: [ objectLogEntries := objectLogEntries reversed ].
  labels := {}.
  maxOne := maxTwo := 0.
  priorityLabels := self priorityLabels.
  bold := {(ObjectLogEntry error).
  (ObjectLogEntry fatal)}.
  objectLogEntries
    do: [ :ole | 
      | one two |
      two := ole labelString.
      two size > 35
        ifTrue: [ two := (two copyFrom: 1 to: 35) , '...' ].
      labels
        add:
          {(one := priorityLabels at: ole priority).
          two.
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
      maxTwo := maxTwo max: two size ].
  maxOne := maxOne + 2.
  maxTwo := maxTwo + 2.
  objectLogList := labels
    collect: [ :ar | 
      | stream one two three textAttributes |
      stream := WriteStream on: String new.
      one := ar at: 1.
      two := ar at: 2.
      three := ar at: 3.
      textAttributes := ar at: 4.
      stream
        nextPutAll: one;
        space: maxOne - one size;
        nextPutAll: two;
        space: maxTwo - two size;
        nextPutAll: three.
      Text string: stream contents attributes: textAttributes ].
  ^ objectLogList -> nil