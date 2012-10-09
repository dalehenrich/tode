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
                   'classesInMetacelloProject:level:
executeCommandFrom:
put:onStream:withOptions:
selectorsForClass:inClass:level:
stackFor:level:
toString:
toString:level:
toString:withOptions:
toStringFromOop:level:
writer'