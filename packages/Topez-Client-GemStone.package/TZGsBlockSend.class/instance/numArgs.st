as yet unclassified
numArgs
  numArgs ifNil: [ numArgs := self session receiverNB: self blockOopType perform: #'numArgs' withArgs: #() ].
  ^ numArgs