tests
testLevel1Result
    | x |
    self assert: (x := self engineClass new level1Result) = '[1,0,-1,[],nil]'