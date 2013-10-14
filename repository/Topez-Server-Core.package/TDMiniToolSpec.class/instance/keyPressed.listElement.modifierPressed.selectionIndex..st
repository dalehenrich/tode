interaction
keyPressed: char listElement: listElement modifierPressed: modifierPressed selectionIndex: index
  ^ self keyboardActionBlock
    value: self
    value: listElement
    value: char
    value: modifierPressed
    value: index