hooks
renderIn: aView
	self setsComputeMinAndMax.
	self defineAxesIfNecessary.
	
	self renderAllDecoratorsBehind.
	elements := OrderedCollection new.
	sets do: [ :aSet | 
			aSet renderIn: aView using: self.
			elements addAll: aSet elements ].
	self renderAxis.	
	self renderAllDecoratorsInFront.
	self renderTimeLineLabels.