testing
testRun
    | x doit |
    doit := '{ 1. 0. -1. {true. false.}. nil }'.
    self assert: (x := self topez run: doit) = '[1,0,-1,true,false,nil]'