tests
testPopupTextColor
	builder popupText: [ :v | 'My number is ', v printString ] color: Color blue.
	builder setUpElement: RTBox element.