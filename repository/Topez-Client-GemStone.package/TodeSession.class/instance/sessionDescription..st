accessing
sessionDescription: anObject
  sessionDescription := anObject.
  self
    gemNRS: sessionDescription gemNRS;
    stoneNRS: sessionDescription stoneNRS;
    userID: sessionDescription userId;
    yourself