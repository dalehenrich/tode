private
isMethodForBlock
  self method ifNil: [ ^ true ].
  ^ self method isMethodForBlock