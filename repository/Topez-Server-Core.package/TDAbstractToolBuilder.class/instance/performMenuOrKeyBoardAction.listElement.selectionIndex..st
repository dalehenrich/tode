tools
performMenuOrKeyBoardAction: selector listElement: listElement selectionIndex: selectionIndex
  ^ (self respondsTo: selector)
    ifTrue: [ 
      self
        perform: selector
        withArguments:
          {listElement.
          selectionIndex} ]
    ifFalse: [ 
      self builder
        perform: selector
        withArguments:
          {listElement.
          selectionIndex} ]