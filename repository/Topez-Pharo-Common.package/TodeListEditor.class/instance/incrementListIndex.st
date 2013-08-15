accessing
incrementListIndex
   self list size > self listIndex ifFalse:[ ^self listIndex: self listIndex].
	self listIndex: self listIndex + 1