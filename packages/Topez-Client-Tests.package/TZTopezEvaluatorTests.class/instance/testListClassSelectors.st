testing
testListClassSelectors
    | result x |
    self pushPrintBlocks.
    result := self evaluator
        evaluate: 'set class TZEngine';
        evaluate: 'list cselectors'.
    self
        assert:
            (x := result asString)
                =
                   '[Array] anArray( #''executeCo...etc...
#1 [Symbol] executeCommandFrom:
#2 [Symbol] put:onStream:withOptions:
#3 [Symbol] stackFor:level:
#4 [Symbol] toString:
#5 [Symbol] toString:level:
#6 [Symbol] toString:withOptions:
#7 [Symbol] toStringFromOop:level:
#8 [Symbol] writer'