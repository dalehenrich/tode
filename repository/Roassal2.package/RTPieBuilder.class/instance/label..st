private - utility
label: object
	"Private method"
	| element trachelShape labelPosition lbl |
	element := view elementFromModel: object.
	trachelShape := element trachelShape.
	labelPosition := (trachelShape position + ((trachelShape externalRadius + 30)@ 0)) 
						rotateBy: ((trachelShape betaAngle - trachelShape alphaAngle) / 2 + trachelShape alphaAngle) * 3.1415 / 180
						about: trachelShape position.

	lbl := RTLabel elementOn: object asString.
	view add: lbl.
	"view canvas addShape: lbl."
	lbl trachelShape translateTo: labelPosition