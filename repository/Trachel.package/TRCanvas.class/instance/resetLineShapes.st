action
resetLineShapes
	"Remove all the shapes, no callback on the shapes is invoked!"
	shapes := shapes reject: #isLineShape