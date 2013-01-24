as yet unclassified
dbContinue: processOop
  | result |
  result := self session continue: (TZHeaderGemStone oop: processOop).
  self halt.
  ^ result	"convertTDEvaluateTokenResponseToText"