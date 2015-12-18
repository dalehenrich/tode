accessing
getMaxNumberOfPoints
	"Return the maximum number of points any of the dataset has."
	^ datasets inject: 0 into: [ :max :ds | max max: ds numberOfPoints ]