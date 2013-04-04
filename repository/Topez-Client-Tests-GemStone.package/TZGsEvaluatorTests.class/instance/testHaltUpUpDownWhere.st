testing
testHaltUpUpDownWhere
    | result x |
    result := self runHaltUpUpDownWhere.
    self
        assert:
            (x := result asString)
                =
                    '[TZStack] aTZStack( aTZStackFrameElement, aTZStackFrameElement, aTZStackFrameElement, aTZStackFrameElement, aTZStackFrameElement, aTZStackFrameElement, aTZStackFrameElement)
#1 	1 	Halt(AbstractException) >> _signalWith:
#2 	2 	Halt class(AbstractException) >> signal
#3 	3 	SmallInteger(Object) >> halt
#4 	4 	Executed Code
#5 	5 	String >> evaluateInContext:symbolList:
#6 	6 	TZEngine >> executeExpressionFrom:inContext:level:
#7 	7 	UndefinedObject(GsNMethod) >> _gsReturnToC'