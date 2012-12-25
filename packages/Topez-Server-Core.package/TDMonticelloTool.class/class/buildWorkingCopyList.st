as yet unclassified
buildWorkingCopyList
  ^ (MCWorkingCopy allManagers
    collect: [ :wc | 
      TDMonticelloWorkingCopy new
        workingCopy: wc;
        yourself ]) asArray