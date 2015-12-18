private - utility
moveBehindIfNecessary: someEdges
	shouldMoveBehind ifFalse: [ ^ self ].
	someEdges pushBack