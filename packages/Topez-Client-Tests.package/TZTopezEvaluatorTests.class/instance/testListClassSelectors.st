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
                   '[Array] anArray( #''writer'', ...etc...
#1 [Symbol] writer
#2 [Symbol] stackFor:level:
#3 [Symbol] toString:level:
#4 [Symbol] toStringFromOop:level:
#5 [Symbol] toString:withOptions:
#6 [Symbol] put:onStream:withOptions:
#7 [Symbol] executeCommandFrom:
#8 [Symbol] toString:'