as yet unclassified
buildWorkingCopyList: workingCopies
  ^ (workingCopies
    collect: [ :wc | 
      TDMonticelloWorkingCopy new
        workingCopy: wc;
        yourself ]) asArray