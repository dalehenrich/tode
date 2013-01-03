accessing
clientElement: aClientElement
  super clientElement: aClientElement.
  Transcript
    cr;
    show: 'TodeListEditor>>clientElement: ' , aClientElement editorWindowLabel.
  self changed: #'list'