as yet unclassified
homeMethod
  | fr |
  (self receiver isKindOf: ExecutableBlock)
    ifFalse: [ ^ self method ].
  self next ifNil: [ ^ nil ].
  fr := self next finalBlockHomeFor: self.
  fr ifNil: [ ^ nil ].
  ^ fr method