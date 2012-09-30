input character filtering
isEndOfFileEvent: keystrokeEvent 
	"A <ctl>d event, represented either as character value 4, or as $d with
	the control or meta key. The actual representation varies on different
	versions of Squeak."

	^ keystrokeEvent keyValue == 4
		or: [keystrokeEvent keyCharacter = $d
				and: [keystrokeEvent controlKeyPressed]]