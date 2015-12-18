adding
mouseAction: aString
	^click 
		ifTrue: ["Still does not work"
	'
    <set id="',aString,'s" attributeName="visibility" from="visible" to="hidden" begin="',aString,'.click"/>
  '			  ]
		ifFalse: [  
	'
    <set attributeName="visibility" from="hidden" to="visible" begin="',aString,'.mouseover" end="',aString,'.mouseout"/>
  ']