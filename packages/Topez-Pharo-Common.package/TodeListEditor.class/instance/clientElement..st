accessing
clientElement: aClientElement
    super clientElement: aClientElement.
    list := nil.
    Transcript
        cr;
        show: 'TodeListEditor>>clientElement: ' , aClientElement editorWindowLabel.
    self changed: #'list'