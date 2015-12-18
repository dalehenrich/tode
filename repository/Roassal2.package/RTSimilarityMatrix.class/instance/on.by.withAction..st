initialize-release
on: aCollection by: similarity withAction: aCallBack
	"initialize model"
	elements := aCollection.
	pairs := OrderedCollection new.
	action := aCallBack.
	elements
		do: [ : lhs |
			elements do: [ : rhs | | pair |
				pair := (RTComparison of: lhs with: rhs by: similarity).
				pairs add: pair ] ]
		displayingProgress: 'comparing elements ...'.