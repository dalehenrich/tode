accessing
setListIndex: anInteger
    listIndex := anInteger.
    self changed: #'listIndex'	"tell morph we've changed"