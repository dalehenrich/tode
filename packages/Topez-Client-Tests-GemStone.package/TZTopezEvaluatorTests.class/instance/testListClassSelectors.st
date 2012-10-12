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
                   'classElementForClass:level:
classesInMetacelloProject:level:
executeCommandFrom:
put:onStream:withOptions:
selectorsForClass:inClass:level:
stackFor:level:
subclassesOf:level:
superclassesOf:level:
toString:
toString:level:
toString:withOptions:
toStringFromOop:level:
writer'