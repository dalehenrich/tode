accessing
list
  self clientElement ifNil: [ ^ #() ].
  list
    ifNil: [ 
      Transcript
        cr;
        show: 'TodeListEditor>>list: ' , self clientElement editorWindowLabel.
      list := self clientElement list ].
  ^ list