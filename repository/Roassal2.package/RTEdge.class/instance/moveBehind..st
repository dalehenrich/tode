actions
moveBehind: elements
	self trachelShape pushBehindAll: (elements collect: [:each | each trachelShape])