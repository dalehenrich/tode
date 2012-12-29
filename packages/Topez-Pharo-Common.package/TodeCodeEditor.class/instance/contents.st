accessing
contents
  "Answer the contents that the receiver is holding--presumably a string."

  self clientElement ifNil: [ ^ '' ].
  ^ self clientElement source