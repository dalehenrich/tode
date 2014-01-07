tools
clientList: miniTool listElement: listElement
  | l stack frames |
  theMiniTool := miniTool.
  stack := self theStack.
  frames := stack frames.
  l := frames
    withIndexCollect: [ :frame :index | 
      | str attributes |
      attributes := {}.
      str := index asString , '. ' , frame printString.
      frame homeMethod == self homeMethod
        ifTrue: [ attributes add: TextEmphasis bold ].
      frame receiver == self receiver
        ifTrue: [ 
          attributes
            add: TextEmphasis underlined;
            add: TextEmphasis italic ].
      Text string: str attributes: attributes ].
  ^ l asArray