private
frameList
  | l stack frames |
  stack := self theStack.
  frames := stack frames.
  l := frames
    withIndexCollect: [ :frame :index | 
      | str attributes |
      attributes := {}.
      str := index asString , '. ' , frame printString.
      frame homeMethodOop == self homeMethodOop
        ifTrue: [ attributes add: TextEmphasis bold ].
      frame frameSelfOop == self receiverOop
        ifTrue: [ 
          attributes
            add: TextEmphasis underlined;
            add: TextEmphasis italic ].
      Text string: str attributes: attributes ].
  ^ l asArray