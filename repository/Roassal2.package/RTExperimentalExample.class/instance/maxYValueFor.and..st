as yet unclassified
maxYValueFor: layers0 and: layers1 

	^ ((layers0, layers1) inject: Float fmin 
	into: [ :max :arr | arr inject: max into: [:a :each | a max: (each y0 + each y) ] ])