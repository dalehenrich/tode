actions
moveBehindItsExtremities
	"Make the edge be displayed before its extremities are displayed. This is useful to not have the edge over the extremity nodes"
	self trachelShape pushBehindAll: (Array with: self from trachelShape with: self to trachelShape)