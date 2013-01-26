accessing
clientElement: aTDClientElement
  super clientElement: aTDClientElement.
  aTDClientElement setStyling: self morph.
  self changed: #'contents'