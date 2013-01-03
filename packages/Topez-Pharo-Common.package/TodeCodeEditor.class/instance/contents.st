accessing
contents
  "Answer the contents that the receiver is holding--presumably a string."

  self clientElement ifNil: [ ^ '' ].
  Transcript
    cr;
    show: 'TodeCodeEditor>>contents ' , self clientElement editorWindowLabel.
  ^ self clientElement source