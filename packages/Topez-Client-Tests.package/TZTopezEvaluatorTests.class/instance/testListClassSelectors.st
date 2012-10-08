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
                   '[Array] anArray( #''classesIn...etc...
#1 [Symbol] classesInMetacelloProject:level:
#2 [Symbol] executeCommandFrom:
#3 [Symbol] put:onStream:withOptions:
#4 [Symbol] stackFor:level:
#5 [Symbol] toString:
#6 [Symbol] toString:level:
#7 [Symbol] toString:withOptions:
#8 [Symbol] toStringFromOop:level:
#9 [Symbol] writer'