accessing
stFilterBlock
  stFilterBlock ifNil: [ stFilterBlock := [ :op | op safeToIgnore not ] ].
  ^ stFilterBlock