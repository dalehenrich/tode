tests
test
	| el |
	el := RTElement on: 123.
	el + RTBox.
	el @ RTPopup.

	view add: el.	

	self assert: el view == view.
	
	self assert: view numberOfElements = 1.
	el announce: TRMouseEnter.
	self assert: view numberOfElements = 3.
	el announce: TRMouseLeave.
	self assert: view numberOfElements = 1.