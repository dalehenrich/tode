accessing
theBehavior
  | frame obj |
  frame := self theCurrentFrame.
  obj := frame theSelf.
  ^ obj class