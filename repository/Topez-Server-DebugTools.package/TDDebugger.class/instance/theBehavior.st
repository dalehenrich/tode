accessing
theBehavior
  | frame obj |
  frame := self theCurrentFrame.
  obj := frame receiver.
  ^ obj class