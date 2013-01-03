accessing
listIndex: anInteger
  self setListIndex: anInteger.
  Transcript
    cr;
    show: 'TodeListEditor>>listIndex: ' , self clientElement editorWindowLabel.
  self clientElement itemSelected: anInteger