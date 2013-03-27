as yet unclassified
keyStroke: evt
  evt altKeyPressed
    ifFalse: [ self selectFrom: self text size + 1 to: self text size ].
  ^ super keyStroke: evt