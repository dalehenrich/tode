switches
switchSpecs
	"return an array of switchSpecs."

	"
	 switchSpec (Array):
	   switch state anObject (typically a symbol)
	   switch action selector
	   switch label
	   switch balloon text
	   swtich default state (true - default state)
"

	^ self clientElement switchSpecs