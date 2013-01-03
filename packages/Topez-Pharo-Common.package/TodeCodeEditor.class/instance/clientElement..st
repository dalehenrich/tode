accessing
clientElement: aTDClientElement
  super clientElement: aTDClientElement.
  aTDClientElement setStyling: self morph.
  Transcript
    cr;
    show: 'TodeCodeEditor>>clientElement: ' , self clientElement editorWindowLabel.
  self changed: #'contents'