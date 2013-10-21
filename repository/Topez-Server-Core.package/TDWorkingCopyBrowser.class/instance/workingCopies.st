accessing
workingCopies
  workingCopies ifNil: [ workingCopies := workingCopyBlock value ].
  ^ workingCopies