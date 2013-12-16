stash
label
	| sessionDescription |
	sessionDescription := self topezClient sessionDescription.
	^ 'GemStone Shell: ' , self sessionName , ' (' , sessionDescription stoneName , ':' , sessionDescription netLDI , ')'