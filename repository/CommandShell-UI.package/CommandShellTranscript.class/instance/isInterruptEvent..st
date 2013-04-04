input character filtering
isInterruptEvent: keystrokeEvent 
	"A <ctl>c event, represented either as character value 3, or as $c with
	the control or meta key. The actual representation varies on different
	versions of Squeak."

	^ keystrokeEvent keyValue == 3
		or: [keystrokeEvent keyCharacter = $c
				and: [keystrokeEvent controlKeyPressed]]