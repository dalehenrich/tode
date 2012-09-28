tests
testDebugger
    "topaz 1> display oops
topaz 1> run
1 foo: 23 with: {1.2.}
%
-----------------------------------------------------
GemStone: Error         Nonfatal
a MessageNotUnderstood occurred (error 2010), a SmallInteger does
not understand  #'foo:with:'
Error Category: 231169 [GemStone] Number: 2010  Arg Count: 4 Context : 108701953 exception : 108670465
Arg 1: [26827777 sz:9 cls: 110849 Symbol] foo:with:
Arg 2: [2 sz:0 cls: 74241 SmallInteger] 0 == 0x0
Arg 3: [10 sz:0 cls: 74241 SmallInteger] 1 == 0x1
Arg 4: [108666113 sz:2 cls: 66817 Array] anArray
"

    | result doit |
    doit := '1 foor: 23 with: {1.2.}'.
    result := self topez run: doit