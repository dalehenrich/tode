accessing
perform: actionBlock
  | rawOopType |
  rawOopType := actionBlock value.
  ^ self performTransformOn: rawOopType