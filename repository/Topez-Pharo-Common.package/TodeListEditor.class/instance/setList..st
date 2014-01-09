accessing
setList: aList
    list := aList.
    self changed: #'list'	"tell morph we've changed"