accessing
listIndex: anInteger
    self setListIndex: anInteger.
    self changed: #'listIndexChanged'	"tell editor we've been  clicked"