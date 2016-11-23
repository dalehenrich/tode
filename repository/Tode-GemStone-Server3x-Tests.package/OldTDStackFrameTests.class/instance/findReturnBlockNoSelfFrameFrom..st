private
findReturnBlockNoSelfFrameFrom: stack
  | frames returnBlockNoSelfMethod |
  frames := stack frames.
  returnBlockNoSelfMethod := self class compiledMethodAt: #'returnBlockNoSelf'.
  ^ frames first
    findFrameSuchThat: [ :frame | frame method == returnBlockNoSelfMethod ]